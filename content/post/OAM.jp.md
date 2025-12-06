---
date: 2025-04-28T14:00:00Z
lastmod: 2025-04-28T14:00:00Z
author: Zeusro
title: "OAM(Open AI Model)"
subtitle: "雙兔傍地走，安能辨我是雄雌"
cover: "image/post/OAM/oam.png"
---

## Spec

```GO
type AI interface {
	SloveProblem(question string) (output interface{}, cost time.Duration)
}
```

最短時間で問題を解決できる AI がより優れた解となります。時間が唯一の答えを教えてくれます。

## OAM（Open Application Model） and OAM（Open AI Model）的区别

OAM（Open Application Model）はクラウドネイティブアプリケーションを定義するモデルです。

OAM（Open AI Model）は AI を定義するモデルです。

Open AI Model（OAM）は、AI をシンプルかつ直接的に定義する標準をもたらします。

## なぜ OAM はうまくいかないのか？

モデルを設計する人々は DevOps の実務をほとんど理解していません。多くの DevOps の仕事は実際にはシンプルで単調です——キーボードを持って仮想マシンにログインし、直接作業するだけなのです！

![image](/image/post/OAM/suo.png)

## 雙兔傍地走，安能辨我是雄雌

## 参考リンク

[1] 
天地不仁以万物为刍狗
https://github.com/oam-dev/spec/pull/381

[2]
Is the OAM spec being actively developed?
https://github.com/oam-dev/spec/issues/488