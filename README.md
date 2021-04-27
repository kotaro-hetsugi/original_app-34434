# 目次
1.アプリケーション概要<br>
2.制作背景<br>
3.接続方法<br>
4.工夫した点<br>
5.実装機能<br>
6.テーブル設計<br>
7.実装予定の機能<br>
8.要件定義<br>
9.開発環境<br>


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
  旅行先をweb上で探す時、様々なwebサイトを見ることがあります。
  - MAPアプリ
  - 旅行サイト
  - 公式観光連盟サイト<br>
              etc・・・<br>
              <br>
    これらのサイトはとても便利である反面、以下の課題があります。<br>
    <br>
  - 評価や口コミがどのような人の意見なのかわからない<br>
   （実際に行った人の意見のみで絞ることができない）
  - 有名な観光名所が上位に表示されやすい

  全体的に見ると<strong style="color: red; ">評価や検索順位がフェアじゃない</strong>ということがあります。<br>
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
  https://travellers-34434.herokuapp.com/<br>
  [https://travellers-34434.herokuapp.com/](https://travellers-34434.herokuapp.com/){:target="_blank" rel="noopener"}<br>
  <a href="https://travellers-34434.herokuapp.com/" target = "_blank"  rel = "noopener">リンク</a>
  content_tag('a', content.to_s.html_safe, :href => link, :title => title, :class => css, :target => '_blank', :rel => 'noopener')

  ## 3-2.テスト用アカウント
  テストID：test1@test1<br>
  テストPASS：xxx111111<br>

  ## 3-3.接続補足
  - WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。<br>
    ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。<br>
  - 同時に複数の方がログインしている場合に、ログインできない可能性があります。<br>

# 4.工夫した点
  ## 4-1.評価の入力性
  評価の入力方法を検討していた際、3つ候補があり、どの方法を採用するか迷いました。<br>
  そこで入力候補とメリット、デメリットを書き出し整理しました。

  ### ①text_fieldに直接入力
  >メリット
  - ビューファイルのコーディングが比較簡単にできる
  >デメリット
  - ユーザーが直接入力する手間が必要になる
  - モデルに特定の数値だけが保存できるように、バリデーションの記載が必要になる。

  ### ②number_fieldによる数値入力ボックスでの入力
  >メリット
  - ビューファイルのコーディングが比較簡単にできる
  >デメリット
  - ユーザーが数値分押す手間が必要になる
  - 入力の際に数値上下ボタンが小さく、入力しづらくなる
  - モデルに特定の数値だけが保存できるように、バリデーションの記載が必要になる。

  ### ③星クリックすることによる入力
  >メリット
  - 星をクリックするだけなので、入力しやすくなる
  - 評価がビジュアルでわかりやすくなる
  >デメリット
  - 星評価を実装するためのjsの記述が必要になる

  書き出し整理することで、
  一番、ユーザー側が使いやすそうな③による評価方法を採用することができました。

  ## 4-2.表示の見やすさ
  見やすさは、ユーザーの使いやすさにも関わってくることだと思うので、工夫しました。<br>
  いくつか例をあげます。
  - 文字の大きさ、余白
  - エラーメッセージ日本語化
  - テキスト文表示形式（段落反映）

# 5.実装機能
  ## 5-1.一覧表示機能（トップページ）
  ![94cddd0feb6235538e40a40e10300541](https://user-images.githubusercontent.com/78333577/113398645-e5f29a00-93d9-11eb-8229-09e30429eb03.gif)
  投稿一覧を見ることができます。<br>
  表示順は一番最新の投稿が上に表示されるようになっています。
  ## 5-2.ユーザー管理機能
   ### 5-2-1.新規登録
   ![15b32b5f505abb0ef22516026a9e3fbf](https://user-images.githubusercontent.com/78333577/113399164-b5f7c680-93da-11eb-9c93-4b9bc0eb1260.gif)
   ユーザーの新規登録を行います。<br>
   新規登録ページはログアウト状態で、ヘッダーの『新規登録』を押すことで遷移します。<br>
   登録情報には下記の制限があります。
   - ニックネーム：6文字以内
   - パスワード：6文字以上、半角英数字混合<br>
   入力後、『新規登録』ボタンを押すことで、登録ができます。
   ### 5-2-2.ログイン
   ![d2b079b81179c6d87bbaa6d98e594f7b](https://user-images.githubusercontent.com/78333577/113400324-92358000-93dc-11eb-8fbf-24817a8d4ba2.gif)
   登録済みのユーザーにログインができます。<br>
   ログインページはログアウト状態で、ヘッダーの『ログイン』を押すことで遷移します。<br>
   登録情報を入力後、『ログイン』ボタンを押すことで、ログインができます。
   ### 5-2-3.ログアウト
   ![aede1ea6ca1e7017202a2c6c9aeeb176](https://user-images.githubusercontent.com/78333577/113400451-c90b9600-93dc-11eb-9b7a-2928f81c33c0.gif)
   ログアウト状態にすることができます。<br>
   ログイン状態時に、ヘッダーのニックネーム部にカーソルを動かすと『ログアウト』ボタンが表示されます。<br>
   『ログアウト』ボタンを押すことで、ログアウト状態にすることができます。

  ## 5-3.投稿機能
  ![6590289308f9698afef8a630ee0b2a69](https://user-images.githubusercontent.com/78333577/113465111-85606d00-946c-11eb-8af8-f03b1329f533.gif)
  投稿を行います。<br>
  投稿ページはログイン状態で、ヘッダーの『投稿』を押すことで遷移します。<br>
  投稿には下記が必須になります。<br>
  - 投稿画像
  - 旅先名
  - 都道府県
  - 評価<br>
  入力後、『送信』ボタンを押すことで、投稿ができます。

  ## 5-4.詳細表示
  ![2bec50278354df2c0e5c9debef00b3fe](https://user-images.githubusercontent.com/78333577/113465210-3e26ac00-946d-11eb-8a32-57278040f59d.gif)
  投稿の詳細を確認できます。<br>
  詳細表示は、投稿一覧から見たい投稿を押すことで遷移します。<br>
   ### 5-4-1.投稿編集
   ![8a7fde6c55601d7eee7218b2a32e9d04](https://user-images.githubusercontent.com/78333577/113465251-8e057300-946d-11eb-885a-8af04206cf90.gif)
   投稿ユーザー&投稿ユーザーでログインしている状態であれば、投稿を編集できます。<br>
   編集画面は、詳細画面から画像右上にカーソルを動かし『編集』を押すことで遷移します。<br>
   編集したい内容を入力後、『送信』ボタンを押すことで、編集ができます。
   ### 5-4-2.投稿削除
   ![703247c2a41db01cdaaf7d913648edf1](https://user-images.githubusercontent.com/78333577/113466289-906bcb00-9475-11eb-8d77-ff8c9ef22bcb.gif)
   投稿ユーザー&投稿ユーザーでログインしている状態であれば、投稿を削除できます。<br>
   投稿削除は、詳細画面から画像右上にカーソルを動かし『削除』を押し、アラートを『OK』を押すことで削除できます。<br>
   ### 5-4-3.コメント
  ![18a2840b6b7966eedeab07978eed3744](https://user-images.githubusercontent.com/78333577/113465319-0ff59c00-946e-11eb-8bdd-8d41e787605d.gif)
   ログイン状態のユーザーであれば投稿に対して、コメントができます。<br>
   コメント入力後、『送信』ボタンを押すことで、コメントができます。<br>
   入力したコメントは、詳細表示画面から確認することができます。

  ## 5-5.検索機能
  投稿の検索ができます。<br>
  検索機能では、以下のことができます。
  ### 5-5-1.検索候補
  ![6080464837baef9f674653e82d3b0834](https://user-images.githubusercontent.com/78333577/114970634-c10c2580-9eb5-11eb-83f4-0e784280c232.gif)
  検索欄にキーワードを入力すると、投稿済みの旅先名から検索候補を表示できます。<br>
  検索候補をクリックすると、検索欄を検索候補で置き換えることができます。
  ### 5-5-2.都道府県検索
  ![d8249588ecdd1f7b6f5309504dfdcfe7](https://user-images.githubusercontent.com/78333577/114970711-e7ca5c00-9eb5-11eb-955b-6713a8d04fa4.gif)
  都道府県のプルダウンを選択し『検索』ボタンを押すことで、指定した都道府県の投稿のみを検索できます。
  ### 5-5-3.キーワード検索
  ![b578fc2f3f40730a9ed8b6d71e024d33](https://user-images.githubusercontent.com/78333577/114970759-ffa1e000-9eb5-11eb-86da-a39712039a76.gif)
  検索欄にキーワードを入力し『検索』ボタンを押すことで、キーワードと一致する投稿を検索することができます。<br>
  キーワードと、投稿情報の旅先名or自由記入欄の内容と一致する投稿を検索します。
  ### 5-5-4.都道府県&キーワード検索
  ![2ea34e790c98f9aa0c6e9422738e3f81](https://user-images.githubusercontent.com/78333577/114970802-1b0ceb00-9eb6-11eb-94a9-24f1aa66bc65.gif)
  下記2つをかけ合わせた検索ができます。
  - 都道府県のプルダウンを選択（5-5-2.都道府県検索）
  - キーワードを入力（5-5-3.キーワード検索）
  ### 5-5-5.検索情報表示
  ![bb3c45eadcebda35abdf12954aa08727](https://user-images.githubusercontent.com/78333577/115644100-f357d000-a358-11eb-8ec5-eac5fd2ba48c.gif)
  下記の検索時の情報を取得し表示できます。
  - 都道府県
  - キーワード
  - 検索件数
  - 平均評価
  ### (例外パターン)検索結果なし
  ![ac706ec30dc194ee0a5099e6f0a673b7](https://user-images.githubusercontent.com/78333577/114970845-2fe97e80-9eb6-11eb-94be-2448ec7bff4b.gif)
  検索結果が見つからない場合は、『⚠該当する検索結果はありません⚠』と表示されます。

  ## 5-6.並び替え機能
  下記機能使用時に、投稿順の並び替えができます。<br>
  - 5-1.一覧表示機能（トップページ）
  - 5-5.検索機能
  ![3030f319394fbe7d7f1b2100fb966c89](https://user-images.githubusercontent.com/78333577/116060452-da368280-a6bc-11eb-9e32-6dc784397053.gif)
  並び替えは下記から選択できます。選択後、並び替えが実行されます。
  - 投稿の新しい順（デフォルト）
  - 投稿の古い順
  - 評価の高い順
  - ランダム
  
# 6.テーブル設計
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

# 7.実装予定の機能
- 都道府県別検索機能<br>
  検索に都道府県のドロップダウンを組み込み、投稿検索時に絞り込める機能を実装予定です。
- 平均星表示機能<br>
  検索時に総合的な評価をひと目で分かるようにするため、平均で星5点満点中の点数を表示させる機能を実装予定です。
- マイページ機能<br>
  ユーザー自身が投稿した情報を閲覧、編集、削除しやすくするためのマイページ機能を実装予定です。


# 8.要件定義（Googleスプレッドシート）
https://docs.google.com/spreadsheets/d/1OKEdCtfZPbojakxj23h31DbT7OkT__Vz9R6gUdOKmLg/edit#gid=0

# 9.開発環境
- Ruby on Rails
- MySQL
- Github
- AWS
- Visual Studio Code






