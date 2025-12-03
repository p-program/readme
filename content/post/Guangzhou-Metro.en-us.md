---
author: "Zeusro"
title: "Guangzhou Metro is a Beautiful Serverless Real‑Time Data Stream Processing System"
date: 2020-09-02T10:04:04+08:00
draft: false
feature: "image/post/Guangzhou-Metro/guangzhou.png"
---

The essence of the web is a **flow**, a circulation of **data**. Today’s web is essentially a special case of `Serverless` (a long‑lived version of `Serverless`).  
From this perspective, Guangzhou Metro is actually a **beautiful Serverless system**.

## The Essence of an Efficient Web System

The fundamental goal of a high‑efficiency web system is to **make data flow as fast as possible** (the higher the TPS, the better). This coincides perfectly with the design philosophy of Guangzhou Metro.

I once mentioned on Zhihu:  
[The essence of Guangzhou Metro is a drainage system](https://zhuanlan.zhihu.com/p/145018193).  
Its goal is not necessarily to transport you to a destination but to **flush you out of the station as quickly as possible**.  
That’s why entering and exiting immediately still costs money now (though I remember a time when it used to be free).

Back to the main topic.  
`Serverless` is a design in which **the runtime lifespan is relatively short**.  
For example, Guangzhou Metro mainly operates during daytime while the infrastructure receives maintenance at night.  
To simplify the analysis, let’s only consider Line 1.  
Suppose normally **3~50 trains** run:

- Low peak → Only 3 trains (cost reduction)
- Peak → Maximize throughput while ensuring safety (add more trains)
- Night → 0 runtime instances (all trains offline)

## Advantages of Serverless

**Cost Reduction**:  
Each station can operate with minimal staff. Metro operators do not need to care about underlying system maintenance — they just sit in the control room, press a few buttons, and chill.

**Rapid Innovation**:  
Previously, passengers had to buy paper tickets. Now UnionPay, NFC, WeChat Pay, and Alipay are all supported.

**Elastic Scalability**:  
Resources can be **scaled dynamically** based on configuration and conditions:

- Night → sleep (0 instances)
- Low peak → run only 3 instances
- Peak → run 50 instances
- Ultra‑peak → throttle (limit requests/boarding)

→ **Maximum resource efficiency** and **lowest operating costs**

## Guangzhou Metro is Essentially Real‑Time Data Stream Processing

From the passenger’s perspective, riding the Metro is equivalent to a **database transaction**:

- **Atomicity**: a girl either boards or does not board the train
- **Consistency**: if she exits at the wrong station, consistency is violated
- **Isolation**: the girl ignores you
- **Durability**: all trip operations are persisted (entry/exit validation records)

From the system perspective, Guangzhou Metro implements **distributed transactions** using a **real‑time data stream processing architecture**.

## Guangzhou Metro in 2020

### Front‑end Always‑On, Back‑end Dynamically Scaled

All the fixed infrastructure is always present → the **front‑end**.  
Trains come and go → the **back‑end**.

Since human lives are involved, scaling decisions rely on historical data and are **still manually controlled** today.

This also inspires web architecture design:  
From a `Serverless` perspective:

| Component | Ideal Behavior |
|----------|----------------|
| Front‑end | Always‑on, lightweight, hardened by cache & Service Worker |
| Back‑end | Scaled dynamically, run only when needed |

→ Better user experience without sacrificing efficiency

### Traffic Sharding

During peak hours, gates are added.  
During extreme congestion: **skip stops** or **deny boarding**.  
This is essentially **data safety control** (passenger safety).

### Metering Capability

Fare is based on travel distance, which in essence equals **time**.  
The longer the usage, the higher the cost — just like the cloud.

### Single Responsibility of the Back‑end

Guangzhou Metro is primarily for passenger transport, **not freight**.  
Every time I move house, I find the Metro inconvenient — because the design goal is a **drainage system**.  
Freight would drastically reduce throughput.

Thus, when designing `Serverless` microservices:

> Keep responsibilities **extremely small** — small enough to not even require service discovery

Example: Cloud storage performing instantaneous video transcoding via `Serverless`.

## Greater Bay Area on Rails

By 2025, Guangzhou Metro already has a circular line. I rode it several times and found that the design of stations and platforms integrates cultural creativity and digital aesthetics — a sign of **full Greater Bay Area integration**.

## Conclusion

Guangzhou Metro is a **highly efficient Serverless system**.  
It leverages decades of passenger flow data to achieve:

- **High‑efficiency operations**
- **Safety of passengers (= data safety)**