---
date: 2025-04-19T00:00:00Z
lastmod: 2025-04-19T00:00:00Z
author: Zeusro
title: "AI駆動型デザイン・うんちデータベース"
subtitle: "AIがあれば、もう脳を使う必要はない"
feature: "image/post/AI-Driven-Design-Shit-Database/af945e428bf8442aa61b6cd017ec587c.png"
---

{{< toc >}}

AIを使って個人のうんちデータを記録・分析し、健康管理に役立てるプロジェクト：

![image](/image/post/AI-Driven-Design-Shit-Database/mac.png)

## 元の要件ドキュメント

```prompt
git config user.name "oracle"
git config user.email "trademar_us@oracle.com"

0～5日の間隔でデータを生成。1日最大3件まで。

下痢の時間分析（1日で>=3回、または2回の間隔が60分未満）
排便困難の回数（3日に1回）

排便時間、
排便のスムーズ度
0 完全に出ない
1 ほとんど出ない
2 普通に出る
3 一気に出る

インターフェース：散布図
年間レポート
週間レポート（4～7回が正常）
```

```bash
docker run -d --name clickhouse-server \
  -p 8123:8123 \
  -p 9000:9000 \
  -v /Users/zeusro/data:/var/lib/clickhouse \
  -e CLICKHOUSE_PASSWORD=123456 \
  clickhouse/clickhouse-server:latest
```

## データ準備

![image](/image/post/AI-Driven-Design-Shit-Database/image.png)

### プロンプト準備と回答蒸留

1. Macでメモアプリを作成し、プロジェクトの背景情報を記録
2. 最新のChatGPTクライアントをダウンロードし、メモを背景情報としてAIにデータベースとテーブルを作らせる
3. プロンプトを改善してテーブルを微調整
4. カスタム要件を新しいプロンプトとして渡し、ChatGPTにSQLを出力させる

```prompt
"shit" というデータベースを作成し、シーンに合わせたフィールドを設定
上記表を簡略化、poop_times_today、interval_minutes、notesを削除
時間は全て DateTime、smoothnessはEnumで表現
週次・月次レポートには、排便頻度と間隔の静的分析を追加：
1日で>=3回なら下痢、1週間で<=3回なら便秘
これを週報・月報に反映
```

最終的にAIの回答からキー情報を抽出：

```sql
CREATE DATABASE IF NOT EXISTS shit;
CREATE TABLE IF NOT EXISTS shit.toilet_log
(
    id           UInt64,               -- ユニークID
    log_time     DateTime,             -- 排便時間（秒単位）
    smoothness   Enum8(                -- 排便スムーズ度
                    'blocked' = 0,     -- 完全に出ない
                    'hardly'  = 1,     -- ほとんど出ない
                    'normal'  = 2,     -- 普通に出る
                    'diarrhea'= 3      -- 一気に出る
                  )
)
ENGINE = MergeTree
ORDER BY log_time;

INSERT INTO shit.toilet_log VALUES
(1, '2025-04-17 08:30:00', 'normal'),
(2, '2025-04-17 10:10:00', 'diarrhea'),
(3, '2025-04-18 09:00:00', 'blocked');

-- 一気に出る回数の集計
SELECT count() 
FROM shit.toilet_log 
WHERE smoothness = 'diarrhea';

-- 日別排便回数
SELECT toDate(log_time) AS date, count() 
FROM shit.toilet_log
GROUP BY date
ORDER BY date;

-- 📊 下痢日マーク（中間テーブル/サブクエリ）
SELECT 
    toDate(log_time) AS day,
    count() AS poop_count,
    (count() >= 3) AS is_diarrhea_day
FROM shit.toilet_log
GROUP BY day
ORDER BY day;

-- 📊 週報：下痢、便秘、健康
WITH 
(SELECT 
    toDate(log_time) AS day, 
    count() AS poop_count
 FROM shit.toilet_log
 GROUP BY day) AS daily_stats

SELECT 
    toStartOfWeek(day) AS week_start,
    count() AS total_days,
    sum(poop_count) AS total_poop_count,
    sum(poop_count >= 3) AS diarrhea_days,
    (total_poop_count <= 3) AS is_constipation_week,
    (diarrhea_days = 0 AND total_poop_count > 3) AS is_healthy_week
FROM daily_stats
GROUP BY week_start
ORDER BY week_start;

/*
is_constipation_week = 1 → 便秘週
is_healthy_week = 1 → 健康週
*/

-- 📊 月報：下痢、便秘、健康
WITH 
(SELECT 
    toDate(log_time) AS day, 
    count() AS poop_count
 FROM shit.toilet_log
 GROUP BY day) AS daily_stats

SELECT 
    toStartOfMonth(day) AS month_start,
    count() AS total_days,
    sum(poop_count) AS total_poop_count,
    sum(poop_count >= 3) AS diarrhea_days,
    (total_poop_count <= 12) AS is_constipation_month,
    (diarrhea_days = 0 AND total_poop_count > 12) AS is_healthy_month
FROM daily_stats
GROUP BY month_start
ORDER BY month_start;

/*
is_constipation_month = 1 → 便秘月
is_healthy_month = 1 → 健康月
*/
```

### データインポート

```prompt
このテーブル構造に基づき最低400件のテストデータを生成
log_timeとsmoothnessはランダム
1日あたり0～3件生成
CSV形式で出力
日付範囲：2024-01-01 ～ 2025-04-17
Macでclickhouse clientを使ってCSVからインポート
```

```bash
brew install clickhouse
# プライバシー設定でclickhouseコマンド実行を許可
clickhouse client --host=localhost --port=9000 --user=default --password=123456 --query="INSERT INTO shit.toilet_log FORMAT CSV" < /Users/yourname/toilet_log_data.csv
```

その後、[tabix](http://dash.tabix.io/dashboard) で結果を確認。

```sql
SELECT 
    count() AS all
FROM shit.toilet_log;
```

## アプリケーション層デザイン

```prompt
ページ中央に黄色い円、その右側にスクロールバー
スクロールすると黄色が徐々に濃くなる（4段階）
外部プラグインは使用せず、純正HTMLで実装
Windows、Mac、iOS、Android対応
画像クリックでPOST呼び出し、パラメータ {"smoothness":1}（1～4、4が最も濃い色）

GinをWebフレームワークとして使用
簡易ログやtraceidを設定
index.htmlページを追加
"/shit"ルートを追加、Shitメソッドに委譲
Shitメソッドで clickhouse shit.toilet_log テーブルに書き込み
docker-compose.yml作成、GinとClickHouseを同時起動
```

軽く微調整すればすぐ起動可能。  
完成プロジェクト：[shit](https://github.com/p-program/shit)

```bash
docker compose up --build
```

## デザインインスピレーション

過去の経験から得たアイデア：  
ある商人が言った「人生がレモンをくれたら、ジュースにして飲め」と同じ思考を応用。  
もし誰かが頭上でうんちをしたら、記録してキー情報を抽出し、適切なタイミングで活用せよ、というわけ。

## TODO

現状の可視化は [tabix](http://dash.tabix.io/dashboard) で対応  
SQLを使った週報/月報インターフェースも作れるが、面倒なので放置中

1. 週報・月報チャート統合、データとAPI提供
