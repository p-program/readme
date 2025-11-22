---
date: 2025-10-23T12:00:00Z
lastmod: 2025-10-23T12:00:00Z
author: Zeusro
title: "Code 1A84"
subtitle: "Ship of Theseus"
feature: "image/post/Code-1A84/img3.jpg"
---

Recently, I rewatched *攻殻機動隊 SAC_2045* Season 2. It is obvious that after the characters became fully 3D, their facial expressions and movements are not as delicate as before. And aside from 江崎プリン, the new characters leave little lasting impression.

## 江崎プリン

The mythological archetype of 江崎プリン is the “Ship of Theseus.”  

In the latter half of the story, 島村孝, who has already evolved into N, fights against the entire human faction by himself.  

![image](/image/post/Code-1A84/1A84.jpg)

Among all the characters, the only one unaffected by the “Double-thought” virus (which separates body and consciousness), besides the protagonist, is 江崎プリン.

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

Clearly, the author’s answer to the Ship of Theseus question is “Yes.”  
Strictly speaking, the rebooted 江崎プリン should be considered a posthuman whose core is `Code. 1A84`, restored from memory backup.

Although she does not possess a Ghost, she still retains her original humanity.

Coincidentally, both Eastern and Western mythologies answer the Ship of Theseus question with a “yes.”

## Nezha

In *Investiture of the Gods*, Nezha kills the Dragon King’s third prince and brings disaster upon himself. To avoid implicating his parents and the people of Chentang Pass, he “returns bones to his father and flesh to his mother,” taking his own life.  

![image](/image/post/Code-1A84/13z.jpg)

With the help of Taiyi Zhenren, his spirit returns in a dream to his mother, asking her to build a shrine for him on Mount Cuiping so he may receive offerings and restore a physical body.

However, his father Li Jing destroys the shrine, cutting off Nezha’s path to rebirth. In the end, Taiyi Zhenren uses lotus roots as bones and lotus leaves as flesh to create a new lotus-body incarnation, bringing Nezha back to life.

## Prometheus

The Titan Prometheus is punished by Zeus for stealing fire. He is chained to the Caucasus Mountains, where an eagle eats his liver daily; during the night, it regenerates, repeating endlessly.  

![image](/image/post/Code-1A84/Προμηθεύς.jpg)

At the same time, the kind centaur Chiron is accidentally struck by Heracles’ poisoned arrow. His wound causes unbearable pain, but because he is immortal, he cannot die.

To free Prometheus and relieve Chiron’s suffering, they reach an agreement: Chiron willingly gives up his immortality, takes Prometheus’ place in the Underworld, and accepts eternal punishment. Prometheus is then freed.

## Though you’re gone with the wind, life goes on.

## Link

[1]
看懂《攻殼機動隊SAC_2045》之前，有誰看懂《1984》這部警世寓言小說
https://www.4gamers.com.tw/news/detail/43070/ghost-in-the-shell-sac-2045-and-george-orwell-1984-connection