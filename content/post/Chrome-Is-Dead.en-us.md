---
date: 2025-11-21T04:00:00Z
lastmod: 2025-11-21T04:00:00Z
author: Zeusro
title: "Chrome Is Dead"
slug: "Chrome Is Dead"
subtitle: "Google Search is dead too."
feature: "image/post/Chrome-Is-Dead/Chrome-Is-Dead.png"
---

    Sic transit gloria mundi.

In 2020, I proposed the [One Open Operating System](https://www.bullshitprogram.com/zh/one-open-operating-system/) with AI as the entry point, which indirectly negates the traditional "presentation layer technology" like `Chrome`. As the traditional search engine coexisting with browsers, it naturally cannot escape the fate of mutual destruction.

This article will start from the business model of traditional search engines, analyze the dimensionality reduction impact of AI technology on browsers and traditional search engines, and combined with the progressive reconstruction of internet entry points by major companies in this year (2025), propose a design concept of "Service As API" at the end.

## Formal Logic and Definitions

`Coase Theorem`: Resources will be reorganized in structures with lower transaction costs to achieve higher efficiency.

![image](/image/post/Chrome-Is-Dead/OOOS.png)

`One Open Operating System`: abbreviated as OOOS. A next-generation decentralized edge cloud computing system for the internet with AI as the entry point.

`Chrome`: A free web browser developed by `Google` based on `Chromium`.

`Presentation Layer Technology`: A visual presentation technology based on data visualization.

`Traditional Search Engine`: Web crawler-based search engines represented by `Google search`.

`Edge Computing AI`: Large language model AI running on the user's local server, capable of on-demand offline hybrid computing.

`Service As API`: Cloud APIs provided as services.

## Problems of Traditional Search Engines

By summarizing and analyzing users' online behavior, a general behavior flow can be extracted:

1. Open the browser
2. Use the search engine to ask questions
3. Find the desired answer (n)

In this process, users need to choose the appropriate search engine and find the desired answer from the list; from the search engine's perspective, they need to use web crawlers to periodically crawl content from existing websites and rank the content according to algorithms, presenting high-quality content to users to fulfill their information needs.

Users access ads on the search engine pages indirectly; Google earns revenue through Adsense ads; domestically, Baidu earns revenue through paid rankings.

Traditional search engines mainly face the problem of information accuracy—how to ensure the information is accurate and meets user expectations as platform operators?

![image](/image/post/Chrome-Is-Dead/5g.png)

In 2019, when a telecom base station was to be built near a certain community, a small group of "environmentalists" suddenly appeared. They claimed the radiation from the base station was harmful to humans, especially pregnant women, and insisted on opposing the construction. Suppose they created a large amount of corresponding public opinion and content online, which was indexed by search engines. Then the next uninformed person searching for "base station construction" might see absurd rumors like "base stations cause cancer."

The more clicks the site gets, the higher its ranking, and eventually everyone sees the result "constructing telecom base stations harms human health." Although the government intervened and the conspiracy failed, and the base station was built smoothly, their existence reminded me of the email bomb circulated in high school—forward this email and Ma Huateng will personally upgrade your QQ level to a sun; because KFC has multiple chicken wings, everyone should stop eating KFC.

It is now 2025, and traditional search engines still can only place historically credible content at the top and cannot eradicate online rumors. This "top placement" is a platform preference but essentially a bias. The results given by traditional search engines are relatively objective results that the platform wants to present to users.

On the surface, users seek the optimal solution from the results themselves, but in fact, they seek suboptimal solutions in the "information cocoon" deliberately created by the platform. Most users do not even click to the next page.

Therefore, the conclusion is: **Traditional search engines provide limited information filtered by the platform**.

## Dimensionality Reduction Impact of AI Technology on Browsers + Traditional Search Engines

In OOOS, the user's access point is an intelligent API gateway (AI). Compared to relying on traditional search engines, AI provides smarter answers, and the user's thinking chain is shorter:

1. Open AI client;
2. Ask AI questions;
3. Get a unique reference answer from AI.

![image](/image/post/Chrome-Is-Dead/no-brain.png)

In search engines, users need to evaluate multiple results; while in large model AI clients, basic math, physics, and programming problems can basically be assisted by AI. Users only need to read "The Art of Asking Questions" and know how to ask questions.

According to Coase Theorem, business models based on this shorter behavior chain (n>3) will inevitably replace traditional search engines, and the corresponding browser software will follow the path to extinction.

Moreover, due to competition among vendors at this stage, platform ads are relatively few (the product itself is the brand's advertisement), and competition for traffic entry points will become more intense.

## Progressive Reconstruction of Internet Entry Points

I call `Chrome` a "presentation layer display" technology implementation. At present, major companies use IDEs and AI clients as entry points, with embedded browsers/mobile system views as data presentation implementations.

This article takes Tencent ima and Alibaba Quark clients as examples, comparing their business implementations as progressive reconstructions of internet entry points.

### ima

`ima` is a thinking knowledge base. Currently, it mainly has two core functions: `Notes` and `Knowledge Base`.

![image](/image/post/Chrome-Is-Dead/ima.png)

Users can import existing markdowns or write/edit themselves; or import online articles to ask and answer based on them.
`ima` embeds a browser; accessing PDFs in the knowledge base actually points to a temporary private link.

### Quark

Quark client is equivalent to an `All AI in one` AI toolbox. Coincidentally, it also uses an embedded browser as the presentation form.

![image](/image/post/Chrome-Is-Dead/quark.png)

However, the academic search is somewhat ridiculous. When I searched "P equilibrium," a bunch of fabricated results appeared, and it often asked me to pay.

![image](/image/post/Chrome-Is-Dead/vip.png)

From this client, one can also see Alibaba Group's desire to seize the discourse power of internet entry points in the AI era.

In my view, this progressive reconstruction is still ongoing. Moreover, competing for internet entry points is meaningless because users will eventually build their own customized large model AI.

## Possibility of Edge Computing AI

![image](/image/post/Chrome-Is-Dead/gemini-3.webp)

At present, the main problem of local AI deployment is the high cost. Therefore, 99.99% of users mainly use free clients or call APIs with tokens.

However, I believe that as users' dissatisfaction with public clouds accumulates, along with increased attention to privacy data and demand for highly customized needs, the true future will belong to edge computing AI.

## Service As API

All internet resources are essentially internet businesses and also services.

![image](/image/post/Chrome-Is-Dead/SAA.png)

Reconstructing production relations with AI is to facilitate humans to realize creativity.

When battery, edge computing AI, and VR technologies achieve further low-cost breakthroughs, combined with `IPv6`, `eSIM` and 5G networks, that will be the true fourth industrial revolution of information technology.
