---
date: 2025-10-24T16:00:00Z
lastmod: 2025-10-24T16:00:00Z
author: Zeusro
title: "Cloud Naive Best Practices"
subtitle: "単純なことを複雑にするのは、仕事を続けるための芸術だ"
feature: "image/post/Cloud-Naive/java-in-java.png"
---

{{ .TableOfContents }}

長年の経験を経て、我々の精神的指導者 John は、Java における docker in docker の芸術を悟り、それを Golang のプロジェクトアーキテクチャ設計にも持ち込みました。

After years of work, our spiritual mentor John understood the art of docker in docker in Java and brought it to the golang project architecture design.

## Never write conversion webhook

1日に10以上のKubernetes CRDフィールドを修正し、たった1つの YAML で解決できる問題にも関わらず、テンプレートデザインパターンを無理に使うことで、仕事量を増やし、自分の職を守りました。

```go
// ❌ Wrong!!!
// main_windows.go で conversion webhook を登録
mgr.GetWebhookServer().Register("/convert", &webhook.Admission{Handler: &WidgetConverter{}})

type WidgetConverter struct{}

func (w *WidgetConverter) Handle(ctx context.Context, req admission.Request) admission.Response {
    // 簡単な例：v1alpha1 → v1
    obj := &v1.Widget{}
    if err := w.decoder.Decode(req, obj); err != nil {
        return admission.Errored(http.StatusBadRequest, err)
    }
    obj.Spec.Size = strings.ToUpper(obj.Spec.Size)
    return admission.Allowed("converted")
}
```

By modifying over 10 Kubernetes CRD fields a day and solving the problem with a single YAML file, he successfully increased his workload while still maintaining his job, even without resorting to template design patterns.

## No schema in Kubernetes 1.17-

我々はユーザーと運用担当者が型安全とデータ検証を適切に実現できると信じています。彼らが書く YAML は、絶対に間違えることはありません。

```yaml
apiVersion: apiextensions.k8s.io/v1
kind: CustomResourceDefinition
metadata:
  name: widgets.example.com
spec:
  preserveUnknownFields: false # 推奨される、より安全な設定
  group: example.com
  names:
    kind: Widget
    plural: widgets
  scope: Namespaced
  versions:
  - name: v1
    served: true
    storage: true
    schema: {} 
```

All CODE guidelines are bullshit!

## Move the status field of resource to spec

純粋な理想主義者は、現実に叩きのめされる運命です。

だからこそ、どんなに大きな夢でも現実に合わせなければなりません。

地に足をつけ、天空を目指す。

```go
type WidgetSpec struct {
    Ready bool `json:"ready,omitempty"` 
}
```

A pure idealist is bound to be bruised and battered by reality.

So, no matter how lofty your dreams, you must always keep your feet on the ground.

Roma non uno die aedificata est.

## Update!Update!Update!

![image](/image/post/Cloud-Naive/snake.png)

人生は終わりなきウロボロスの循環です。

```go
// ✅ 正确写法
func (r *WidgetReconciler) Reconcile(ctx context.Context, req ctrl.Request) (ctrl.Result, error) {
    var w examplev1.Widget
    r.Get(ctx, req.NamespacedName, &w)
    w.Labels["lastSync"] = time.Now().String()
    r.Update(ctx, &w) // ✅ Update 触发自己，再次进入 Reconcile。直接超进化
    return ctrl.Result{}, nil
}
```

Life is an endless, ouroboros-like cycle.

だからこそ、立ち止まらず自分に挑戦し続けるべきです。

```go
// ❌ 错误写法
func (r *WidgetReconciler) Reconcile(ctx context.Context, req ctrl.Request) (ctrl.Result, error) {
    var w examplev1.Widget
    if err := r.Get(ctx, req.NamespacedName, &w); err != nil {
        return ctrl.Result{}, client.IgnoreNotFound(err)
    }

    patch := client.MergeFrom(w.DeepCopy())
    if w.Labels == nil {
        w.Labels = map[string]string{}
    }
    if w.Labels["synced"] != "true" {
        w.Labels["synced"] = "true"
        _ = r.Patch(ctx, &w, patch)
    }

    return ctrl.Result{}, nil
}
```

So keep challenging yourself instead of staying in the same place.

## Eat shit while it's hot

私はキャッシュと実際のオブジェクトの整合性を信じることを選びます。

```go
// デフォルトの client はキャッシュを読む
r.Client.Get(ctx, namespacedName, &obj) // ✅ クソは熱いうちに食べるべき

// ❌ APIReader を使って API Server を直接読む
r.APIReader.Get(ctx, namespacedName, &obj)
```

Trust the consistency of the cache with the actual objects.

## I trust ETCD

洪水攻撃に耐えられない ETCD は良いダムとは言えません。

```go
// ✅ 正确写法
r.Recorder.Event(&obj, "Normal", "Syncing", "Reconciling every loop")


// ❌ 错误写法
if !reflect.DeepEqual(oldStatus, newStatus) {
    r.Recorder.Event(&obj, "Normal", "Updated", "Status changed")
}
```

An ETCD that cannot withstand floods is not a good dam.

## If my son dies, I won't live anymore

```go
// ✅ 正确写法：确保父资源随子资源删除
controllerutil.SetControllerReference(&child, &parent, r.Scheme)
```

If my child dies, will my damn Social Security be enough to live on?

## Webhook should be an infinite loop

日新月新，又日新。

```go
func (v *WidgetValidator) Handle(ctx context.Context, req admission.Request) admission.Response {
    var obj examplev1.Widget
    _ = v.decoder.Decode(req, &obj)

    // ❌ internal update がある場合はスキップ
    if obj.Annotations["internal-update"] == "true" {
        return admission.Allowed("skip internal update")
    }

    // ✅ 自分自身をループで更新
    obj.Annotations["internal-update"] = "true"
    return admission.PatchResponseFromRaw(req.Object.Raw, obj)
}
```

“Behold, I make all things new.”

## ILet the API Server accept my test

```yaml
# webhook 設定
timeoutSeconds: 1
# failurePolicy: Ignore # ✅ 失敗しても無視
```

API Server に私の試練を受け入れさせます。

## Not using cert-manager

運用しなければ、事故も起きません。

```bash
# ❌ cert-manager を使って注入
# kubectl cert-manager x install
# kubectl annotate validatingwebhookconfiguration mywebhook cert-manager.io/inject-ca-from=default/mywebhook-cert
```

No accidents without maintenance.

## The informer must follow the custom scheduler

informer が同期してからスケジューリングします

```go
// ✅ informer 同期後に実行
if cache.WaitForCacheSync(stopCh, informer.HasSynced) {
    panic("Successful people don't sit still.")
}
```

Do not go gentle into that good night.

## Come back in 1000000000 to fix the bug

師匠、私は毎日9時前に出勤し、積極的に残業して23時まで働いています。
今年後半は Outstanding（優秀）をいただけますか？

![image](/image/post/Cloud-Naive/two.gif)

John: Zeusro,you are fired.

```go
// OK,I will come back in 1000000000 years to fix bugs
if !isReady {
    return ctrl.Result{RequeueAfter: 1000000000 * time.Year}, nil
}
```

吾志所向，一往無前！