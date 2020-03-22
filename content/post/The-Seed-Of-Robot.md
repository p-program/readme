---
title: "The Seed Of Robot —— Intelligent API Gateway"
date: 2020-03-21T20:56:37+08:00
draft: true
feature: "post/The-Seed-Of-Robot/one-piece.jpg"
---

## 冯·诺依曼结构的缺陷

> 数学家冯·诺依曼提出了计算机制造的三个基本原则，即采用二进制逻辑、程序存储执行以及计算机由五个部分组成（运算器、控制器、存储器、输入设备、输出设备），这套理论被称为冯·诺依曼体系结构。

计算程序发展到现在，基本的架构从来未曾改变。无非是
> input --> process --> output

也就是
> 电脑输入--> 程序处理 --> 结果导出

但这套体系一直都是有缺陷的。比如在这套体系里面，一直都无法解决精度缺失的问题，不管你怎么多线程，结果也是串行执行。

这是一套相当落后的架构，但我们不得不使用他。并在他基础上逐渐改进，直至新的技术突破。

## 下一代机器人架构

按照 [The-Seed](https://github.com/p-program/The-Seed) 理念设计的机器人，架构应当是这样的：

Input:

手机输入，键盘输入，语音输入，意念输入

Process:

程序的处理逻辑。

Output:

程序的应答

Influence:

程序的应答对我们的影响

## 现行框架下的解

我们就只挑`Process`来讲吧。按照[世界的定义](https://github.com/p-program/The-Seed/blob/master/world.md)，如果世界是不可解的，那么我们把分解为一个可解的世界就行。

制造泛用性机器人是我们最终的目标，但我们可以先从解决特定可解问题入手。

比如，我要造一个文档机器人，基于我的文档仓库问答。这个文档是这么定义的:

文件名是`kubernetes.md`

内容是

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

在这个问题里面，"kubernetes.md" 就是"世界"。这个世界解决了故障处理的可解子问题。

那么当我向机器人提问`ImageGCFailed`的时候，机器人认识到了这是 "kubernetes.md" 的问题，略微检索（elasticsearch），便能变成答案。

“ML科学家”就不服了，他说你怎么知道机器人知道答案呢？

其实答案也非常的简单。“继续分割这个世界，直至不能再分割”。问题不能解决，那就把它再分解，再特殊化一点。

举个例子。我们用浏览器访问[阿里云的容器服务Kubernetes版](https://help.aliyun.com/product/85222.html)

实际上我们已经进入了 `Kubernetes` 这一个世界，我们所问的问题，只会跟 `Kubernetes` 这个产品相关联。

所以，按照的现行技术框架下，这个问答机器人是这样的：

文档消费者：

文本输入 --> 机器人微服务 --> 检索已有数据（elasticsearch）

文档生产者：

`git clone`文档仓库 --> 程序结构化文档，将死的数据转换为可被理解并检索的数据，比如导入 elasticsearch。

我们可以把所有阿里云产品的文档都丢到这个 elasticsearch 里面，一个产品一个 index。也可以分开做。世界可大可小，关键在于产品经理怎么定义。

最终AI的客户端将会得到进化，他现在只是一个web接口，但是他可以升级成一个客户端，一个app，甚至一台手机。

等我有心情了，再开发出来这个钉钉机器人吧，哈哈。

## 理想架构

手机输入，键盘输入，语音输入，意念输入
--> 
微服务查找（计算资源即微服务，计算资源包括人和计算机）
-->
调用计算资源完成计算

`-->` 表示数据的流动，是一种世界通讯的协议。

微服务查找是一个拓展的概念，查找的结果基于搜索因子呈现，基于质量排序。比如，海贼王临死前留下了 `One Piece`，只留给找到它的人。各路豪杰纷纷响应，世界由此进入大航海时代。

调用微服务不一定只调用一个，我们可以并发地调用多个微服务，`One Piece` 只留给最快找到它的人。

![](/image/post/The-Seed-Of-Robot/one-piece.jpg)

## TODO

1. 面向世界的程序语言
1. 新的世界级通讯协议
1. VR技术

参考链接

1. http://www.yinwang.org/blog-cn/2018/04/13/computer-science
1. https://baike.baidu.com/item/%E5%86%AF%C2%B7%E8%AF%BA%E4%BE%9D%E6%9B%BC%E7%BB%93%E6%9E%84