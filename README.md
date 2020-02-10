# README

## usersテーブル
|Column|Type |Options |
|--------|-----|--------|
|name    |string|null: false|
|email   |string|null: false|

- has_many :users_groups
- has_many  :groups,  through:  :user


##groupテーブル
|Column   |Type|Options |

- has_many :comments
- has_many :users_groups
- has_many :users,  through:  :users_groups


#coments
|Column|Type|Options    |
|------|-----|----------|
|coment|text |          |
|image |image|          |
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|


- belongs_to :group
- belongs_to :user

##user_group
|Column|Type|Options  |
|------|-----|--------|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|
- belongs_to :group
- belongs_to :user
