---
date: 2025-10-23T12:00:00Z
lastmod: 2025-10-23T12:00:00Z
author: Zeusro
title: "Code 1A84"
subtitle: "忒修斯之船"
feature: "image/post/Code-1A84/img3.jpg"
---

最近重新看完了『攻殻機動隊 SAC_2045』第二季，明显感觉人物3D化之后表情和动作没有以前那么细腻，而且除了江崎プリン之外，其他新角色也没有太多值得回味的地方。

## 江崎プリン

江崎プリン这个角色的神话原型是“忒修斯之船”（Ship of Theseus）。
在故事的后半部分，已经进化成N的島村孝，以一己之力对抗整个人类阵营。

![image](/image/post/Code-1A84/1A84.jpg)

而不受“Double-though”病毒（身体与意识分离）影响的除了主角，就只剩下江崎プリン。

```go
package main

import (
	"fmt"
	"time"
)

type Information struct {
	content string
}

func Actor(core string, inbox <-chan Information) {
	for msg := range inbox {
		fmt.Printf("Actor %s received: %s\n", core, msg.content)
	}
}

func main() {
	memory := make(chan Information)
	go Actor("1A84", memory)
	memory <- Information{content: "立ち上がれ、江崎プリン！"}
	time.Sleep(time.Second)
}
```

显然，作者对忒修斯之船的回答是“Yes”。
严格意义上，重启后的江崎プリン应该叫做以`Code. 1A84`作为内核，以记忆备份启动的posthuman。

虽然没有Ghost，但她依旧保留了原本的人性。

巧合的是，在东西方神话里面，对于忒修斯之船问题的解答都是“是”。

## 哪吒

哪吒在《封神演义》中，因杀死龙王三太子而引来大祸，为了不连累父母与陈塘关百姓，他“剔骨还父，削肉还母”，自尽身亡。
他的魂魄在太乙真人的帮助下，托梦给母亲，在翠屏山建了行宫，接受香火以求重塑金身。

![image](/image/post/Code-1A84/13z.jpg)

但其父李靖摧毁了行宫，断绝了哪吒的再生之路。最终，太乙真人用莲藕作为骨骼，荷叶作为肌肉，为哪吒再造了一个莲藕化身，使他复活。

## 普罗米修斯

泰坦神普罗米修斯因盗火被宙斯惩罚，被锁在高加索山上，每日被鹰啄食，夜晚又复原，日日循环。

![image](/image/post/Code-1A84/Προμηθεύς.jpg)

同时，善良的半人马喀戎被赫拉克勒斯的毒箭误伤，伤口剧痛难忍，但因他是永生之身而求死不能。
为了解救普罗米修斯，也为了让喀戎解脱，他们达成了一个协议：喀戎自愿放弃自己的永生，代替普罗米修斯接受惩罚，进入冥府。而普罗米修斯则获得了自由。

## 爾曹身與心俱滅 不廢江河萬古流

## Link

[1]
看懂《攻殼機動隊SAC_2045》之前，有誰看懂《1984》這部警世寓言小說
https://www.4gamers.com.tw/news/detail/43070/ghost-in-the-shell-sac-2045-and-george-orwell-1984-connection