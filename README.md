# README


### 開発環境

* Ruby version
2.5.1

* Database
MySQL

* Rails
5.2.4.2

:green_apple:エンジニア専用の特集サイト

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
