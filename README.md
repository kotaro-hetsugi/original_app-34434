# 目次
| 1.アプリケーション概要<br>
| 2.制作背景<br>
| 3.接続方法<br>
| 4.実装機能<br>
| 5.テーブル設計<br>

# 1.アプリケーション概要
  ## 1-1.アプリケーション名
  Travellers
  ## 1-2.概要説明
  自分が実際に行った旅先を投稿形式でレビューできるアプリです。<br>
  ユーザーを登録すると投稿できるようになります。<br>
  自身の投稿に対しては、編集と削除をすることができます。<br>
  他のユーザーの投稿に対してはコメントのみできます。<br>

# 2.制作背景
  ## 2-1.現状と課題解決
  旅行先をweb上で探す時、
  - MAPアプリ
  - 旅行サイト
  - 公式観光連盟サイト
              etc・・・<br>
              <br>
    これらのサイトはとても便利である反面、以下の課題があります。
  - 評価や口コミがどのような人の意見なのかわからない<br>
   （実際に行った人の意見のみで絞ることができない）
  - 有名な観光名所が上位に表示されやすい

  全体的に見ると<strong>評価や検索順位がフェアじゃない</strong>ということがあります。<br>
  そこで解決策として実際に行ったことがある人の評価のみに絞ったアプリケーションを制作しました。

  実際に行った人のみが投稿できるようにするため、写真投稿を必須としました。

  ## 2-2.ペルソナ
  - 性別：男性
  - 年齢：30歳前後
  - 職業：会社員
  - 趣味：旅行&<strong>マイナーな旅先を探している</strong>

  ## 2-3.目的
  - 実際に旅行をした人が投稿（旅行した人が主役）
  - 評価を投稿できる（星５形式）


# 3.接続方法
  ## 3-1.URL
  https://travellers-34434.herokuapp.com/

  ## 3-2.テスト用アカウント
  テストID：test1@test1<br>
  テストPASS：xxx111111<br>

  ## 3-3.接続補足
  - WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。<br>
    ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。<br>
  - 同時に複数の方がログインしている場合に、ログインできない可能性があります。<br>


# 4.実装機能
  ## 4-1.一覧表示機能（トップページ）
  ![94cddd0feb6235538e40a40e10300541](https://user-images.githubusercontent.com/78333577/113398645-e5f29a00-93d9-11eb-8229-09e30429eb03.gif)
  投稿一覧を見ることができます。<br>
  表示順は一番最新の投稿が上に表示されるようになっています。
  ## 4-2.ユーザー管理機能
   ### 4-2-1.新規登録
   ![15b32b5f505abb0ef22516026a9e3fbf](https://user-images.githubusercontent.com/78333577/113399164-b5f7c680-93da-11eb-9c93-4b9bc0eb1260.gif)
   ユーザーの新規登録を行います。<br>
   新規登録ページはログアウト状態で、ヘッダーの『新規登録』を押すことで遷移します。<br>
   登録情報には下記の制限があります。
   - ニックネーム：6文字以内
   - パスワード：6文字以上、半角英数字混合<br>
   入力後、『新規登録』ボタンを押すことで、登録ができます。
   ### 4-2-2.ログイン
   ![d2b079b81179c6d87bbaa6d98e594f7b](https://user-images.githubusercontent.com/78333577/113400324-92358000-93dc-11eb-8fbf-24817a8d4ba2.gif)
   登録済みのユーザーにログインができます。<br>
   ログインページはログアウト状態で、ヘッダーの『ログイン』を押すことで遷移します。<br>
   登録情報を入力後、『ログイン』ボタンを押すことで、ログインができます。
   ### 4-2-3.ログアウト
   ![aede1ea6ca1e7017202a2c6c9aeeb176](https://user-images.githubusercontent.com/78333577/113400451-c90b9600-93dc-11eb-9b7a-2928f81c33c0.gif)
   ログアウト状態にすることができます。<br>
   ログイン状態時に、ヘッダーのニックネーム部にカーソルを動かすと『ログアウト』ボタンが表示されます。<br>
   『ログアウト』ボタンを押すことで、ログアウト状態にすることができます。

  ## 4-3.投稿機能
  ![6590289308f9698afef8a630ee0b2a69](https://user-images.githubusercontent.com/78333577/113465111-85606d00-946c-11eb-8af8-f03b1329f533.gif)
  ## 4-3.詳細表示
  ![2bec50278354df2c0e5c9debef00b3fe](https://user-images.githubusercontent.com/78333577/113465210-3e26ac00-946d-11eb-8a32-57278040f59d.gif)
   ### 4-3-1.投稿編集
   ![8a7fde6c55601d7eee7218b2a32e9d04](https://user-images.githubusercontent.com/78333577/113465251-8e057300-946d-11eb-885a-8af04206cf90.gif)
   ### 4-3-2.投稿削除
   ![703247c2a41db01cdaaf7d913648edf1](https://user-images.githubusercontent.com/78333577/113466289-906bcb00-9475-11eb-8d77-ff8c9ef22bcb.gif)
   ### 4-3-3.コメント
  ![18a2840b6b7966eedeab07978eed3744](https://user-images.githubusercontent.com/78333577/113465319-0ff59c00-946e-11eb-8bdd-8d41e787605d.gif)
  ## 4-4.検索機能
  ![b5f6310b6da1e949d1da7e016706b18a](https://user-images.githubusercontent.com/78333577/113466407-80082000-9476-11eb-8d14-7f6cb8ce3e09.gif)

# 実装予定の機能


# テーブル設計
[![Image from Gyazo](https://i.gyazo.com/60009e1a2c1f3646812260d47bd49273.png)](https://gyazo.com/60009e1a2c1f3646812260d47bd49273)

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

# 要件定義（Googleスプレッドシート）
https://docs.google.com/spreadsheets/d/1OKEdCtfZPbojakxj23h31DbT7OkT__Vz9R6gUdOKmLg/edit#gid=0

# 開発環境
- Ruby on Rails
- MySQL
- Github
- AWS
- Visual Studio Code

# 工夫した点
エラーメッセージ日本語化
テキスト表示形式（段落反映）
星評価機能のjsファイルに、コメント記入（読み返してわかりやすくするため）

