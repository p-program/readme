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

最短时间求解的AI就是更优解。时间告诉我们唯一的答案。[例子](https://github.com/p-program/OAM/blob/main/function/local/gorm/analyze/module.go)。

## OAM（Open Application Model） and OAM（Open AI Model）的区别

OAM（Open Application Model）是一个定义云原生应用的模型。

OAM（Open AI Model） 是一个定义AI的模型。

Open AI Model [OAM] 带来了简单而暴力的定义AI的标准。

## 为啥 OAM 不行?

建模的人对 DevOps 的工作一无所知，大部分 DevOps 工作其实简单而枯燥——拿起键盘登录虚拟机直接干！

![image](/image/post/OAM/suo.png)

## 雙兔傍地走，安能辨我是雄雌

## 参考链接

[1] 
天地不仁以万物为刍狗
https://github.com/oam-dev/spec/pull/381

[2]
Is the OAM spec being actively developed?
https://github.com/oam-dev/spec/issues/488