---
author: "Zeusro"
title: "Superhero in China 🇨🇳"
date: 2020-03-19T23:50:20+08:00
draft: true
feature: "image/post/FengQingYang/FengQingYang.jpg"
---

Hello,everyone,I am Zeusro who was born and live in China.

I have a question for you guys:
> What we talk about when we talk about Superheroes ?

You might ask me back:
> What a silly question! Have you not heard about Marvel Universe ?

Well, I watched the whole <The Avengers> , and I felt so sad when seeing Tony died.

But you know,Tony wasn't born in China.He is an American superhero, not Chinese superhero.

So, let me introduce one of our Chinese superheroes —— 风清扬.

Before that, I have to say that 李小龙(Bruce Jun Fan Lee) is not a superhero. He was just a  person who fought better than normal Chinese people. I respect him from my heart.

Superheroes should be a special symbol which do not exist in this real world.But their legend inspire us to fight against this world.

风清扬 (FengQingYang) only shows up in the chapter 10th of a Chinese novel named <笑傲江湖>（The Smiling, Proud Wanderer）. It was written by 金庸（Louis Cha Leung-yung）. 金庸 is someone like Stan Lee for some Chinese people.

I would try to make some simple translation, with some live codes and imagination, to show you who 风清扬 is.

> 大丈夫行事，爱怎样便怎，行云流水，任意所至，甚么武林规矩，门派教条，全都是放他妈的狗臭屁!
 
> Big man do what they want,go where they want to go.All guidelines are bullshit.
>

```c
#include <stdio.h>

void func1 () {
	func2();
}

void func2 () {
	printf("hello");
}

int main() {
	func1();
	return 0;
}
```


> 单以武学而论，这些魔教长老们也不能说真正已窥上乘武学之门。他们不懂 得，招数是死的，发招之人却是活的。死招数破 得再妙，遇上了活招数，免不了缚手缚脚，只有 任人屠戮。这个‘活’字，你要牢牢记住了。学招 时要活学，使招时要活使。倘若拘泥不化，便练 熟了几千万手绝招，遇上了真正高手，终究还是 给人家破得干干净净。
 
> 五岳剑派中各有无数蠢才，以为将师父传下来的剑招学得精熟，自然而然便成 高手，哼哼，熟读唐诗三百首，不会作诗也会吟!熟读了人家诗句，做几首打油诗是可以的， 但若不能自出机抒，能成大诗人么?

> These people who call themselves best engineers in this world. They sell you design patterns，OOP, TDD, DDD, Java-Coding-Guidelines,virtual machine, AI, Autopilot, machine learning and so on. But they are not actually the best players in this world.They do not realize the code is dead，but we are alive. So when they face new problems，they actually do not know what to do. If you get stuck in the dead concept, you will never become a truth hacker. (**warning: I do not translate as the book says**)

```c
#define TRUE FALSE
```


> 活学活使，只是第一步。要做 到出手无招，那才真是踏入了高手的境界。你说 ‘各招浑成，敌人便无法可破’，这句话还只说对 了一小半。不是‘浑成’，而是根本无招。你的剑 招使得再浑成，只要有迹可寻，敌人便有隙可 乘。但如你根本并无招式，敌人如何来破你的招式?
 
> No code,no bug.The truth swordsman writes no code，so no one can destroy him.

https://github.com/kelseyhightower/nocode


> 一切须当顺其自然。行乎其不得不行，止乎其不得不止，倘若串不成一起，也就罢了，总之不可有半点勉强。

> Code whatever you like.If you feel tired , just close the computer and go to bed.

> 独孤九剑，有进无退! 招招都是进攻，攻敌之不得不守，自己当然不用守了。

> The best ways to code is to code without any code review.

```php
protected function getCacheAdvertList($keyList)
    {
        $advertList = [];
        //len(keyList)>100，it will read Redis for over 100 times
        foreach ($keyList as $ruleName => $key) {
            $advert = RedisCacheUtil::get($key);
            $advertList[$ruleName] = $advert !== false ? $advert : [];
            $advertList[$ruleName] = $this->formatAdvert($advertList[$ruleName]);
        }

        return $advertList;
    }
```

> 你倒也不可妄自菲薄，独孤大侠是绝顶聪明之人，学他的剑法，要旨是在一个 ‘悟’字，决不在死记硬记。等到通晓了这九剑的 剑意，则无所施而不可，便是将全部变化尽数忘 记，也不相干，临敌之际，更是忘记得越干净彻底，越不受原来剑法的拘束。
 
> Feel free even you forget the API. Thinking is the most important thing  while learning.

As a matter of fact, 风清扬 taught 令狐冲 (LingHuChong) how to become a truth swordsman in the book.

He is the different kind of superhero. He is my Gandalf who teaches me coding.

He belongs to China, without no doubt.

Yes, China does have our own superheroes.You know nothing because you don't learn our culture.