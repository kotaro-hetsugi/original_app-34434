# アプリケーション概要


# URL


# テスト用アカウント


# 利用方法


# 目指した課題解決
旅先をwebページで探すとき、mapアプリや観光連盟公式サイト等を見ることがある。
その際に、おすすめや口コミを参照することがあるが、評価や意見をどのような人が記載しているのかわからない。
また、実際に行った人がどのような評価、感想を持っているのかわからない。

そこで実際に行った人が投稿した評価のみに絞った、webページを作成をすることにした。

# 洗い出した要件


# 実装した機能についてのGIFと説明


# 実装予定の機能


# テーブル設計
（ER図貼り付け方法が不明）


## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |

### Association

- has_many :posts
- has_many :comments

## posts テーブル

| Column  | Type       | Options     |
| ------- | ---------- | ----------- |
| title   | string     | null: false |
| text    | text       | null: false |
| area_id | integer    | null: false |
| score   | integer    | null: false |
| user    | references |             |

### Association

- has_many :comments
- belongs_to :user

## comments テーブル

| Column  | Type       | Options     |
| ------- | ---------- | ----------- |
| text    | text       | null: false |
| user    | references |             |
| post    | references |             |

### Association

- belongs_to :user
- belongs_to :post



# ローカルでの動作方法