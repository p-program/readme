---
author: "Zeusro"
title: "One Open Operating System"
subtitle: Next Generation Operating System
date: 2020-10-20T19:24:49+08:00
draft: false
feature: "image/post/One-Open-Operating-System/0-cover.png"
---

当前版本的操作系统 (IOS,Android,Windows,Mac) 跟我期望相差甚远，我决定另起炉灶，设计新的“**唯一开放操作系统**”。

我把该最终目标分割成几个可行的步骤。

## 应用

![image](/image/post/One-Open-Operating-System/1-Call-Taxi.png)

当前应用架构在我看来是前端+web service。

不过在我看来理想应用架构是一种云端函数。我们不需要下载一个应用程序，云端函数一直在云中以一种 serverless 服务存续。

电召的士就是一种云端函数：

```go
func CallTaxi(myPosition,destination FourDimensionalVector){
    return Taxi{}
}
```

在我看来，电召的士是一种**边缘计算**行为——在告诉云端我的当前位置和目标位置后，“的士调度器”会自动派单给最接近的驾驶员，让他们完成剩下的“计算工作”（带我回家）。

## 电子设备

![image](/image/post/One-Open-Operating-System/2-google-glass.png)

 **边缘计算**的工作放到云端之后，我们就可以着手下一世代的电子设备的规划构筑。

在我看来，电子设备只是一种“展示层技术”+一堆传感器。我们使用自己的意念，声音或者代码，去控制这些电子设备。CPU，内存将不再会有用。ROM存储将作为云端的一种本地数据备份。

下一代电子设备的起步关键在于AI。 [AI是开放API网关](https://www.bullshitprogram.com/zh/the-seed-of-robot/).

![image](/image/post/One-Open-Operating-System/3-Roman.png)

我比较喜欢把下一代智能AI称为“洛克人EXE”。他能帮我完成一些“日常计算工作”。

## Kubernetes

![image](/image/post/One-Open-Operating-System/4-kubernetes.png)

我认为 Kubernetes 只是一个过渡用的分布式系统。里面有太多糟糕的设计和无法解决的难题。比如volume（本质是分布式存储难题），网络诊断，StatefulSet,CronJob，ingress（已经废弃）等。

我正在构思另外一种简化版本的离散型 Kubernetes，以适应IoT等网络拓扑结构。

跟[Lei Zhang](https://github.com/resouer) 说的一样，Kubernetes 只是一个数据库。它最重要的部分是构建“**云原生应用范例**”。

云原生应用范例：

1. 可观测性
1. 自愈性
1. 容错性
1. 可调试性

Kubernetes 完成任务之后就可以退休了吧~

## IaaS

![image](/image/post/One-Open-Operating-System/5-IAAS.png)

IaaS 就像 IOS的app墙那样，对客户提供各种服务。

我相信在不久之后的未来，IaaS 会变成一个**超级云原生应用市场**。

云资源（database,redis,消息队列）就像一种对象供开发者随意使用。

以腾讯云来说，一个更好的开发，CICD管道应该是这样：

1. 腾讯云管理员创建子用户（目前称为用户访问密钥）；
2. 项目经理根据实际情况设置[CAM](https://intl.cloud.tencent.com/document/product/598/17848)；
3. 研发工程师编写业务代码；
4. DevOps工程师协助研发工程师在腾讯云上运行代码（例如准备测试/产品环境、Docker构建、配置、日志记录、监控等）。

![image](/image/post/One-Open-Operating-System/6-sidecar-container-call-product.png)

但在新的世代中，业务代码是可以被简化的：

```go
client := ServiceMeshClient{}
iaas := client.UseTencentCloud()
redis := iaas.Redis()
setRedisResult := redis.Put("Zeusro","是一个靓仔")
```

**忘了配置**,让 DevOps 工程师去处理。甚至配置可以通过AIOps去自动管理。

对于开发而言，隔离了生产环境配置的管理，`rm -rf /`也成了过去式。

## 下一代数字生活

回到一开始的打车难题。

![image](/image/post/One-Open-Operating-System/7-Next-Generation-Digital-Life.png)

在下一世代的数字生活中，电召的士如此简单：

1. Zeusro: Hi,Roman,带我回家。
1. Roman: OK(默认获取当前GPS定位以及家的定位)。
1. Roman: 能用的有高德打车，滴滴打车，美团打车，我将一起调用。
1. Zeusro: 好的。
1. Roman: OK.
1. Taxi driver: 快上车。

![image](/image/post/One-Open-Operating-System/8-cat.png)
