---
author: "Zeusro"
title: "如何让富婆和妹子同时注意到我帅气地玩滑板"
date: 2020-05-24T10:03:42+08:00
draft: true
feature: "image/post/Rich-Grandma-Looks-At-Me/0.jpg"
subtitle: Rich grandma，please look at me！
---

2020-05-23下午，处在失业边缘的本帅趁着邻居家小孩跑去补习，借了他的滑板，开始练习。我们的小区有一个圆形的小花坛，周围是人行道。每天早上都有妹子和富婆一起在这赛道上面爬。

被端端大魔王抛弃后，我突然就不想努力了。

![img](/image/post/Rich-Grandma-Looks-At-Me/1.jpeg)

按照《Distributed Wives System[1]》的理论，要构建现代分布式老婆系统，最起码需要2个老婆。于是，富婆和妹子都成为了我的目标。

假设我，妹子，富婆都是同时开始，同向沿着跑道匀速运动，并且都不需要喝水以及做任何停顿，圆形赛道总长度为600m，我的移动速度为1m/s，妹子的移动速度为2m/s，富婆的移动速度为3m/s。

那么问题来了，**如何让富婆和妹子同时注意到我帅气地玩滑板**？

## 高中生解释

我的周期是 600/1=600s,也就是说，每600s跑完一圈；
妹子的周期是 300s；
富婆的周期是 200s;

得出下列公式

```bash
# 我的运动距离必定为600的倍数，d1为圈数
[1]d1*600=a*1*t --> d1=at/600
# 妹子的运动距离必定为600的倍数，d2为圈数
[2]d2*600=b*2*t --> d2=bt/300
# 富婆的运动距离必定为600的倍数，d3为圈数
[3]d3*600=c*3*t --> d3=ct/200
```

这些等式要同时成立，求t的集合SB。

这道题的关键在于理解题目。题目其实是求d1,d2,d3的公倍数，求得公倍数dn之后，代入公式，就能得到t的一个解。

d1,d2,d3的公倍数dn=6abc/600 。所以，dn是600的倍数，只要能让这个等式成立的，就是符合条件的目标解。

假设时间t是有限的。定义dn为无限集合SB的其中一个解,那么集合SB的第一个元素是0，意思是大家都在同一个起点上。

我们用直觉直接推断集合SB的第二个元素是600。

对于我来说，`d1=1,a1=1`, `t1=1*600/1=600s`

假设大家都处于同一个静态牛顿参考系，这个时候，对于妹子而言，`d2=600s * 2 m/s /600m=2`, `b1=2*300/600=1`

对于富婆来说`d3=600s * 3 m/s /600m=3`, `c1=1`。

也就是说，600s的时候，我刚好跑完1圈，妹子跑了2圈，富婆刚好跑了3圈。大家又回到了原点。

## 程序解释

时间有限，直接暴力穷举，(不)求交集算了，免得浪费我玩滑板的时间。

```go

package main

import (
	"fmt"
	"sync"
)

const (
	//跑道600m
	distance int64 = 600
	//时间限制3600s
	limit int64 = 3600
)

func main() {
	var wg sync.WaitGroup
	wg.Add(3)
	var list1, list2, list3 []int64
	// 1 hour
	go func(w *sync.WaitGroup) {
		list1 = Zeusro(limit)
		wg.Done()
	}(&wg)
	go func(w *sync.WaitGroup) {
		list2 = YoungAndBeautiful(limit)
		wg.Done()
	}(&wg)
	go func(w *sync.WaitGroup) {
		list3 = RichGrandma(limit)
		wg.Done()
	}(&wg)
	wg.Wait()
	//TODO:没有LINQ 没有泛型，求个毛交集
	fmt.Println("MVP Equilibrium")
}

// Zeusro 我的滑板车
func Zeusro(limit int64) (timings []int64) {
	timings = append(timings, 0)
	var v1 int64 = 1
	cycle := distance / v1
	var time int64 = cycle
	//速度*时间=路程
	for time = cycle; time < limit; time += cycle {
		timings = append(timings, time)
	}
	return timings
}

// YoungAndBeautiful 妹子慢慢走
func YoungAndBeautiful(limit int64) (timings []int64) {
	timings = append(timings, 0)
	var v2 int64 = 2
	cycle := distance / v2
	var time int64 = cycle
	for time = cycle; time < limit; time += cycle {
		timings = append(timings, time)
	}
	return timings
}

// RichGrandma 富婆在跑步
func RichGrandma(limit int64) (timings []int64) {
	timings = append(timings, 0)
	var v3 int64 = 3
	cycle := distance / v3
	var time int64 = cycle
	for time = cycle; time < limit; time += cycle {
		timings = append(timings, time)
	}
	return timings
}
```

## 结论

![img](/image/post/Rich-Grandma-Looks-At-Me/2.jpg)
这是一个广义三维世界（我+妹子+富婆）模型,
这个模型存在完美P均衡。
每隔10分钟，我就能与妹子以及富婆完美相遇。

## 吐槽

邻居家孩子鬼精鬼精的，竟然让我玩他弟弟的滑板。他弟弟的滑板根本就不好滑好吗？！

![img](/image/post/Rich-Grandma-Looks-At-Me/IMG_20200524_071419.jpg)

## 参考链接

[1]
Distributed Wives System
http://www.bullshitprogram.com/distributed-wives-system/
