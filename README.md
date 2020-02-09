# README

## usersテーブル
|Column|Type |Options |
|--------|-----|--------|
|name    |string|null: false|
|email   |string|null: false|
|password|string|null: false|

- has_many :messages
- has_many :groups
- has_many :users_groups
- has_many  :groups,  through:  :user


##groupテーブル
|Column   |Type|Options |
|---------|----|--------|
|name     |text|null: false|

- has_many :users
- has_many :comments
- has_many :users_groups
- has_many :users,  through:  :users_groups


#message
|Column|Type|Options    |
|------|-----|----------|
|coment|text |          |
|image |image|          |
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|


- belongs_to :group
- belongs_to :user

##user_group
|Column|Type|Options  |
|------|-----|--------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
- belongs_to :group
- belongs_to :user
