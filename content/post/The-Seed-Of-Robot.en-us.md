---
author: "Zeusro"
title: "The Seed Of Robot —— Intelligent API Gateway"
subtitle: "NO.1 is MVP, NO.2 is NVP(no value player)"
date: 2020-03-21T20:56:37+08:00
feature: "image/post/The-Seed-Of-Robot/one-piece.jpg"
---

## Defects of the Von Neumann Architecture

> Mathematician John von Neumann proposed three basic principles of computer construction: the use of binary logic, stored-program execution, and the five core components of a computer (arithmetic unit, control unit, memory, input devices, and output devices). This theory is known as the Von Neumann Architecture.

From the beginning until now, the fundamental architecture of computation has never really changed. It is simply:

> input --> process --> output

That is:

> Computer input --> Program processing --> Output result

However, this system has always had defects. For example, it has never been able to solve the precision loss problem. No matter how much multithreading is applied, the results are still executed in a serial manner.

This is a rather outdated architecture. Yet we are forced to continue using it, gradually improving it piece by piece, until a new technological breakthrough emerges.

## Next-Generation Robot Architecture

According to the design philosophy of [The-Seed](https://github.com/p-program/The-Seed), the architecture of a robot should look like this:

`Input`:
Mobile input, keyboard input, voice input, mind control input

`Process`:
Program logic handling

`Output`:
Program's response

`Influence`:
The influence of the program's response on us

Sometimes, `Input` and `Output` are the same, because the previous `Output` can become the new `Input`, which corresponds to a recursive solving model in control theory.

## Solutions Within the Current Framework

Let’s focus only on `Process`. According to the [definition of the world](https://github.com/p-program/The-Seed/blob/master/world.md), if the world is unsolvable, then we decompose it into solvable sub-worlds.

Building a general-purpose robot is our ultimate goal, but we can start from solving specific solvable problems first.

For instance, I want to build a document robot that answers based on my document repository. The document is defined as follows:

The file name is `kubernetes.md`, and the content is:

```markdown
# 6 Cluster Fault Management
## 6.1 Node Issues
### 6.1.3 ImageGCFailed
> kubelet can clean up unused containers and images. kubelet performs container and image garbage collection every minute and every five minutes respectively.
> 
> [Configure kubelet garbage collection](https://k8smeetup.github.io/docs/concepts/cluster-administration/kubelet-garbage-collection/)
However, kubelet's garbage collection has a limitation: it can only delete unused images, which is similar to `docker system prune`. But observation shows that dead containers are not the biggest problem — running containers cause a larger issue. If `ImageGCFailed` keeps happening, and containers continue using ephemeral-storage/hostpath (host directory), it will eventually cause a more severe DiskPressure problem affecting all containers on the node.
```

In this case, "kubernetes.md" is a "world". This world solves the specific sub-problem of fault handling.

So when I ask the robot about `ImageGCFailed`, the robot recognizes that it belongs to the "kubernetes.md" world. A quick search (via elasticsearch) will give an answer.

Then the “ML scientist” challenges: how do you know the robot truly knows the answer?

The solution is simple: **continue splitting the world until it can no longer be split**. If a problem is unsolvable, refine it further into a more specialized one.

For example, when we browse [Alibaba Cloud Container Service for Kubernetes](https://help.aliyun.com/product/85222.html),
we have already entered the local world of `Kubernetes`, and any question we ask will only be related to this product.

Thus, under the current technical framework, the Q&A robot works like this:

Document consumer:

Text input --> Robot microservice --> Search existing data (elasticsearch) --> Return search results --> Page analytics to improve result ranking.

Document producer:

`git clone` the document repository --> Program processes and structures the documentation, converting dead data into machine-understandable searchable knowledge such as importing into elasticsearch.

We can import documentation of all Alibaba Cloud products into elasticsearch — one product per index, or separated.

The result seems not very “intelligent” and is relatively simple. But the key is that each component is replaceable, and the crucial documentation part can be expanded (multiple data source collectors importing into elasticsearch). Although the current front end is only a DingTalk robot, its backend microservice can be replaced at any time.

`You can you up. No can’t BB`. Do not fantasize about creating an omnipotent machine. Solve solvable problems first. Replace components when the time is right.

Eventually, the AI client will evolve — currently only a web interface, but later it can become a standalone client, an app, a mobile device, even a robot.

## Ideal Architecture

Mobile input, keyboard input, voice input, mind input  
`-->`  
Microservice lookup (computing resources are microservices, and computing resources include humans and computers)  
`-->`  
Invoke computing resources to complete computation

`-->` represents data flow — a communication protocol between worlds.

Microservice lookup is an extended concept: results are presented based on search factors and ranked by quality. For example, Gol D. Roger left `One Piece` before he died and only those who find it can claim it. Many strong individuals responded, and the world entered the era of the Great Pirate.

![image](/image/post/The-Seed-Of-Robot/one-piece.jpg)

Calling microservices is not limited to a single call — we can call multiple microservices in parallel. `One Piece` belongs only to the first person who finds it. This is how current ride-hailing works: multiple platforms are queried simultaneously, and the ride request is given only to the fastest responder.
