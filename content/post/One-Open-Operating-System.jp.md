---
author: "Zeusro"
title: "One Open Operating System"
subtitle: Next Generation Operating System
date: 2020-10-20T19:24:49+08:00
draft: false
feature: "image/post/One-Open-Operating-System/0-cover.png"
---

現在のオペレーティングシステム（IOS、Android、Windows、Mac）は、私の理想から大きくかけ離れています。そのため、私は新たに「**唯一のオープンオペレーティングシステム**」を設計することに決めました。

私はこの最終目標を、実現可能な複数のステップに分けています。

## アプリケーション

![image](/image/post/One-Open-Operating-System/1-Call-Taxi.png)

現在のアプリケーションアーキテクチャは、フロントエンド＋Web Serviceだと考えられています。

しかし私の理想的なアプリケーションアーキテクチャは、クラウド上の関数（cloud function）です。アプリケーションをダウンロードする必要がなく、クラウド関数が常に serverless サービスとして存在します。

電車のタクシーを呼ぶ行為こそがクラウド関数の一例です：

```go
func CallTaxi(myPosition,destination FourDimensionalVector){
    return Taxi{}
}
```

私にとって、タクシーを呼ぶ行為は**エッジコンピューティング**です——クラウドに自分の現在地と目的地を伝えるだけで、「タクシー dispatcher」が最も近くにいるドライバーに自動で割り当て、残りの「計算作業」（私を家へ送る）を彼らが行います。

## 電子デバイス

![image](/image/post/One-Open-Operating-System/2-google-glass.png)

**エッジコンピューティング**の作業をクラウドに移した後、次世代電子デバイスの設計・構築を進めることができます。

私にとって、電子デバイスは「表示レイヤー技術」＋多くのセンサーにすぎません。私たちは思考、音声、またはコードで電子デバイスを操作します。CPU やメモリは不要になり、ROM ストレージはクラウドのローカルバックアップとして扱われます。

次世代電子デバイスの出発点は AI です。 [AIはオープンAPIゲートウェイである](https://www.bullshitprogram.com/zh/the-seed-of-robot/).

![image](/image/post/One-Open-Operating-System/3-Roman.png)

私は次世代のインテリジェントAIを「ロックマンEXE」と呼ぶのが好きです。彼は日常の「計算作業」を手伝ってくれます。

## Kubernetes

![image](/image/post/One-Open-Operating-System/4-kubernetes.png)

私は Kubernetes があくまで過渡期の分散システムだと考えています。その中には多くの不完全な設計や解決できない問題が存在します。例えば volume（本質的には分散ストレージの問題）、ネットワーク診断、StatefulSet、CronJob、ingress（すでに廃止）などです。

私は IoT などのネットワークトポロジに適応できる、簡略化された離散型 Kubernetes を構想しています。

[Lei Zhang](https://github.com/resouer) 氏が言うように、Kubernetes は単なるデータベースです。その最も重要な部分は「**クラウドネイティブアプリケーションのパラダイム**」を構築したことです。

クラウドネイティブアプリケーションパラダイム：

1. 可観測性
1. 自己修復性
1. フォールトトレランス
1. デバッグ可能性

Kubernetes は役割を終えたら引退しても良いのではないでしょうか〜

## IaaS

![image](/image/post/One-Open-Operating-System/5-IAAS.png)

IaaS は IOS の appウォールのように、顧客にさまざまなサービスを提供します。

私は近い未来に、IaaS は**スーパー・クラウドネイティブアプリマーケット**になると信じています。

クラウドリソース（database、redis、メッセージキュー）は、開発者が自由に利用できるオブジェクトとして扱われます。

Tencent Cloud を例にすると、より良い開発と CICD パイプラインは次のようになるべきです：

1. Tencent Cloud 管理者がサブユーザーを作成（現在はアクセスキーと呼ばれる）；
2. プロジェクトマネージャーが実際の状況に応じて [CAM](https://intl.cloud.tencent.com/document/product/598/17848) を設定；
3. ソフトウェアエンジニアがビジネスロジックを開発；
4. DevOps エンジニアが Tencent Cloud 上でコードの実行を支援（テスト/プロダクション環境の準備、Docker ビルド、設定、ログ、監視など）

![image](/image/post/One-Open-Operating-System/6-sidecar-container-call-product.png)

しかし新世代では、ビジネスコードはさらに簡素化できます：

```go
client := ServiceMeshClient{}
iaas := client.UseTencentCloud()
redis := iaas.Redis()
setRedisResult := redis.Put("Zeusro","是一个靓仔")
```

**設定忘れ**は DevOps エンジニアに任せれば良い。さらには、設定は AIOps により自動管理されるかもしれません。

開発者にとって、プロダクション環境の設定管理が分離されれば、`rm -rf /` のような事故も過去のものになります。

## 次世代デジタルライフ

最初のタクシー問題に戻りましょう。

![image](/image/post/One-Open-Operating-System/7-Next-Generation-Digital-Life.png)

次世代のデジタル生活では、タクシーを呼ぶことは以下のように簡単になります：

1. Zeusro: Hi,Roman, 家に帰りたい。
1. Roman: OK（現在のGPS位置と自宅位置を自動取得）
1. Roman: 使えるのは高徳、滴滴、美団タクシーです。すべて同時に呼びます。
1. Zeusro: OK。
1. Roman: OK.
1. Taxi driver: 車に乗ってください。

![image](/image/post/One-Open-Operating-System/8-cat.png)
