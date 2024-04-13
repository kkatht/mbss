# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| name               | string | null: false |

### Association

- has_many :items
- has_many :comments


## items テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| syouhincd          | string | null: false |
| syouhinmei         | text   | null: false |
| suuryou            | text   | null: false |
| user               | references   | null: false, foreign_key: true |


### Association

- belongs_to :user
- has_many :comments


## comments テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| content            | text   | null: false |
| item               | references   | null: false, foreign_key: true |
| user               | references   | null: false, foreign_key: true |


### Association

- belongs_to :item
- belongs_to :user