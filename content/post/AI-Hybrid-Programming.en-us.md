---
date: 2026-02-06T13:24:24Z
lastmod: 2026-02-06T13:24:24Z
author: Zeusro
title: "AI Hybrid Programming"
subtitle: "Programming languages are dead, long live AI"
cover: "/image/post/AI-Hybrid-Programming/rm-sow_bg_exe-pc.jpg"
---

In 2020, when I proposed rebuilding the entire operating system with AI as the gateway ([OOOS](https://www.bullshitprogram.com/en-us/one-open-operating-system/)) in full English, I only treated AI as a "gateway entry" and did not foresee AI programming's dimensional strike against traditional foundational programming.

In 2025, after comparing `chatGPT`'s performance over these five years, I boldly assert that foundational programming roles will largely disappear within five years, and I predicted the birth of `Clawdbot`.

After using `cursor` and `trae` in the second half of the year (`trae` is slower, only recommended as a backup), I say five years is still too conservative—in two or three years foundational programming roles will be all but gone 🤣.

## Preface

> 2025-04-02 22:33
>
> What various vendors offer today cannot be called an `AI agent`. The first principle of an `AI agent` is that core data is stored in an AI model on the user's own device. In the near future, when people realize the importance of their own data (it effectively represents a unique identity on the internet), are unwilling to hand it to traditional internet vendors, and the cost of local AI deployment drops to the level of ordinary digital consumer goods, the `AI agent` will truly be born.
> ......
> Foundational programming roles will largely disappear within about five years.
> What are today's programming languages, really? I think they are all a kind of bridge between humans and machines. Machines need to execute this intermediate language, while humans need code to crystallize existing business knowledge. So when today's AI has sufficient access to the current project directory and stronger contextual understanding, in essence AI is replacing this foundational programming work.
>
> For now, however, AI still lacks full file reading and very large context. Current AI collaboration is more like glue—AI completes a small part of the user's needs, and programmers stitch it together. But foundational programming roles are already visibly declining.
>
> Foundational programming work will be largely phased out within five years and enter the next stage of history. By then, a six- or seven-year-old child will only need to drag and drop in something like `Swift Playground`, enter user requirements, and AI will produce the most efficient implementation. What people will do is use creativity to weave knowledge from various disciplines into program design and meet complex functional needs.

The current version (Version: 2.4.21) of `cursor` already has full authoring capability at the 100k-line project level. By the `80/20 rule`, 80% of projects are 100k-line piles of junk, so 99% of code basically no longer needs to be written by humans.

After finishing my [kube-killer](https://github.com/p-program/kube-killer) with cursor, I fell into coding ED (`Coding ED`)—I had no desire to write any code at all.

Every idea materialized in an instant, and I didn't even need to spend time learning various business concepts. Over these five years, as the "Crow Seldon" of the Chinese internet, I have already prophesied the decline of several industries.
With the rise of `Vibe coding`, unemployment has finally landed on my doorstep (job offers please send to qnod@hotmail.com).

Lately I have been thinking about how, in this postmodern society, humans should respond to AI's impact on the current industry landscape. I finally found a way in through `formal logic`.

## AGI Does Not Exist

An omnipotent God cannot create a stone He cannot lift --> `AGI` does not exist.

`Formal logic` demands that inference be absolutely correct. But an omnipotent God cannot create a stone He cannot lift.
If He could create it, then God would not be omnipotent; if He cannot create it, that only proves God is not omnipotent.
By analogy, `AGI` does not exist. AI has an upper bound on its capabilities.

I believe that bound is `formal logic` and human emotion. As for the "antinomy" that gave birth to `formal logic`, AI may never understand it in its lifetime.

Humans need to reclaim their own agency and reject the programming cult of the "cyber sugar daddy" (treating AI as a universal wish-fulfilling machine for every problem).

## AI Hybrid Programming Model

![AI Hybrid Programming Model](/image/post/AI-Hybrid-Programming/ai-hybrid.drawio.png)

Based on the structure of `Service As API` and [Time-Series Metaprogramming](https://www.zeusro.com/2026/02/06/Time-Series-Coding/), I propose the `AI Hybrid Programming Model`.

Humans are the stewards of data and the review engineers of AI-generated output. AI must run inside a "`sandbox`" with restricted execution.
AI has read-only access to underlying data; generated artifacts use copy-on-write (`copy on write`).

Only in small files at small scale can the `git` protocol be used temporarily. **Trade storage redundancy for the safety of underlying data.**

The relationship between humans, AI, and data is governed by an `Auth` protocol; any change by AI to data must be approved by humans.

![deepseek mermaid](/image/post/AI-Hybrid-Programming/deepseek_mermaid_20260206_0e1ce3.png)

The "`firewall`" plays the role of "keeping out external threats" and restricting network access. It determines which network resources AI can access in a limited way (to avoid pollution and supply-chain poisoning) and which API ports AI can expose externally.

## References

【1】
ロックマンシリーズ
https://www.capcom-games.com/ja-jp/series/megaman/
