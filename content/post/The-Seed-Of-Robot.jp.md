---
author: "Zeusro"
title: "The Seed Of Robot —— Intelligent API Gateway"
subtitle: "NO.1 is MVP,NO.2 is NVP(no value player)"
date: 2020-03-21T20:56:37+08:00
feature: "image/post/The-Seed-Of-Robot/one-piece.jpg"
---

## フォン・ノイマン構造の欠陥

> 数学者フォン・ノイマンはコンピューター製造の3つの基本原則（2進数論理、プログラム記憶方式、そして「演算器・制御器・記憶装置・入力装置・出力装置」の5大構成）を提唱し、この理論は「フォン・ノイマン・アーキテクチャ」と呼ばれる。

コンピュートプログラムの基本構造は、今日まで本質的に変わっていない。

> input --> process --> output

つまり：

> 入力 → 処理 → 出力

しかし、この体系には常に欠陥がある。例えば、**精度損失問題**を完全に解決できない。不管你怎么多线程（どれだけマルチスレッドにしても）、結局実行は**逐次（シリアル）**に戻る。

これは非常に**遅れたアーキテクチャ**であるが、我々はこれを使うしかなく、その上で改良を積み重ねてきた。新しい技術がブレイクスルーを起こす日まで。

---

## 次世代ロボットアーキテクチャ

[The-Seed](https://github.com/p-program/The-Seed) の理念に基づくロボットの構造は次の通り：

`Input`：
スマホ入力、キーボード入力、音声入力、思念入力（Brain Interface）

`Process`：
プログラムの処理ロジック

`Output`：
プログラムの応答

`Influence`：
応答が人間に与える影響

ときに、`Input` と `Output` は一致する。  
なぜなら前回の `Output` を次の `Input` として扱うことがあり、これは**制御ループ理論（Control Loop Theory）**における**再帰的解法モデル**である。

---

## 現行技術での解法

ここでは特に `Process` に焦点を当てる。[世界の定義](https://github.com/p-program/The-Seed/blob/master/world.md)によれば：

> 世界が不可解ならば、**分割して可解な世界にすれば良い**

汎用ロボットを作ることが最終目標だが、まずは**特定領域の可解問題**から始めるべきである。

例：ドキュメントQAロボット  
→ 私のドキュメント倉庫をベースに回答

ファイル名： `kubernetes.md`  
内容の例：

```markdown
# 六 集群故障管理
## 6.1 节点问题
### 6.1.3  ImageGCFailed
> 
>   kubelet 可以清除未使用的容器和镜像。kubelet 在每分钟和每五分钟分别回收容器和镜像。
> 
>   [配置 kubelet 垃圾收集](https://k8smeetup.github.io/docs/concepts/cluster-administration/kubelet-garbage-collection/)
但是 kubelet 的垃圾回收有个问题,它只能回收那些未使用的镜像,有点像 `docker system prune`,然而观察发现,那些死掉的容器不是最大的问题,正在运行的容器才是更大的问题.如果ImageGCFailed一直发生,而容器使用的ephemeral-storage/hostpath(宿主目录)越发增多,最终将会导致更严重的DiskPressure问题,波及节点上所有容器.
```

この例では  
`kubernetes.md` = 「世界」  
この世界は「故障管理」というサブ問題を解決している。

私が `ImageGCFailed` と質問したとする  
→ ロボットはそれを `kubernetes.md` の話題と認識  
→ 検索（elasticsearch）  
→ 回答生成

“機械学習科学者” が文句を言う  
「どうしてロボットが答えを知っていると言えるの？」

答えは簡単：

> **世界を分割し続け、分割できなくなるまで細かくする**

不可解なら分解 → 特化 → 可解にする

例えば、我々が [阿里云 Kubernetes Service](https://help.aliyun.com/product/85222.html) を開きブラウズすると：

→ すでに「Kubernetes」世界に入っている  
→ 質問は必ずその世界に関連する

つまり現行技術では QA ロボットはこうなる：

文書消費者（ユーザー）：

```
テキスト入力
→ ロボット Microservice
→ Elasticsearch 検索
→ 結果表示
→ ユーザーフィードバックを収集しランキング改善
```

文書生産者（管理者）：

```
git clone 文書リポジトリ
→ プログラムで文書を構造化
→ 検索可能なデータに変換（Elasticsearchへ）
```

阿里云全製品のドキュメントを全部 Elasticsearch に投入可能  
→ 1製品 = 1 index  
→ もしくは別々管理

これを「非智能」と笑う人もいるだろう。  
しかし重要なのは：

- **各コンポーネントが交換可能**
- **データソースを無限に拡張できる**
- **フロント（DingTalk Bot）は単なる窓口**
- **背後の Microservice は進化可能**

> `You can you up. No can’t BB.`
> （文句があるなら自分で作れ）

万能ロボットを妄想するな。  
今解ける課題を解け。  
時が来たら置き換えれば良い。

最終的に AI のクライアントは進化する。  
今はただの Web Interface  
→ App  
→ スマートフォン  
→ ロボット

---

## 理想のアーキテクチャ像

スマホ入力・キーボード・音声・意念入力  
`-->`  
Microservice探索（計算資源＝Microservice。**計算資源は人間も含む**）  
`-->`  
最適な計算資源を呼び出して問題解決

`-->` はデータフローを示し、  
これは**世界間通信プロトコル**である。

Microservice探索とは  
検索因子に基づき候補を提示し、品質順に並べること。

例：海賊王（One Piece）  
→ 最も速く見つけた者だけが価値を得る  
→ 世界は大航海時代へ

![image](/image/post/The-Seed-Of-Robot/one-piece.jpg)

また Microservice 呼び出しは一つに限定しない  
→ 複数同時呼び出し可能  
→ One Piece は最速の者へ

現代の**タクシーアプリ（例：高徳打車）**と同じ  
→ 複数プラットフォームに同時依頼  
→ 最速応答者のみ成約
