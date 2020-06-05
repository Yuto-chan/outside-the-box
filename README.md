# README
## What？
### 海外で働くことを希望するエンジニアが海外の情報を得る為の情報特集サイト
## Why？
### 働き方改革、特にエンジニアは場所にしばられない働き方が謳われる中、エンジニアの海外での就労の情報は意外と少ない。
私自身海外の文化に興味があり、「日本人エンジニアはどのように海外で働いているのだろう？」と調べた結果、ブログなどの個人での情報はあるが、各国のエンジニア向けの就労情報をまとめたサイトなどはないということに気付いた。
そこから自分がエンジニアの海外就労に関する情報をまとめ、提供することで、エンジニアの人生の選択肢をより豊かにすることができるのではないかと思い、まずは情報特集サイトとしてこのアプリを作成することに決めた
### 今後作成しようとしているアプリの詳細
•各国の言語や家賃などのまとめた「General」、就労の為に必要な言語のレベル/学歴/ビザの条件をまとめた「Conditions」、現地で使われているエージェントサイトやその国の特殊な事情をまとめた「Others」を閲覧できる国の詳細ページを作成予定
<br>
•実際の就労経験がある人などの生の意見を閲覧することができる各国の掲示板ページを作成予定
<br>
•自分の利益になる掲示板でのコメントを保存し、マイページで一覧表示する為のいいね機能を導入を導入予定
### 

### 開発環境

* Ruby version
2.5.1

* Database
MySQL

* Rails
5.2.4.2



# フリマアプリDB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :likes
- has_many :posts, through :likes
- has_many :user_groups
- has_many :groups, through :user_groups

## likesテーブル(中間)
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|post_id|integer|null: false|
### Association
- belongs_to :user
- belongs_to :post

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|content|text|null: false|
|image|string|null: false|
|user_id|integer|null: false|
|group_id|integer|null: false|
### Association
- has_many :users, through :likes

## user_groupsテーブル(中間)
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|group_id|integer|null: false|
### Association
- belongs_to :user
- belongs_to :group

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :users, through :user_groups

...
⬇️⬇️⬇️いいね機能の参考になるかも
## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|item|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item
