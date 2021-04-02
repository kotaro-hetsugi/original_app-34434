# アプリケーション名
Travellers

# アプリケーション概要
自分が実際に行った旅先を投稿形式でレビューできるアプリです。
ユーザーを登録すると投稿できるようになります。
自身の投稿に対しては、編集と削除をすることができます。
他のユーザーの投稿に対してはコメントのみできます。

# URL
https://travellers-34434.herokuapp.com/

# テスト用アカウント
テストID：test1@test1
テストPASS：xxx111111

# 利用方法


# 制作背景
旅先をwebページで探すとき、mapアプリや観光連盟公式サイト等を見ることがある。
その際に、おすすめや口コミを参照することがあるが、評価や意見をどのような人が記載しているのかわからない。
また、実際に行った人がどのような評価、感想を持っているのかわからない。

そこで実際に行った人が投稿した評価のみに絞った、webページを作成をすることにした。

実際に行った人のみが投稿できるようにするため、写真投稿を必須としました。

# 要件定義
| 実装項目 | 優先度 | 要件定義 |
| --- | --- | --- |
|  |  |  |
| トップページ | 1 | # ヘッダー<br>− アプリ名<br>## 未ログイン時<br>- ログインボタン<br>- 新規登録ボタン<br>## ログイン時<br>- ユーザー名<br>- ログアウトボタン<br><br># 検索<br>- キーワード<br>- 都道府県プルダウン<br><br># 投稿情報 <br>- 投稿写真<br>- 旅先名<br>- 都道府県<br>- レビュー（星5） |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
| 新規登録画面 | 1 | # 入力項目<br>- ニックネーム<br>- email<br>- パスワード |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
| ログイン画面 | 1 | # 入力項目<br>- email<br>- パスワード |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
| 新規投稿画面<br>& 編集画面 | 1 | # 入力項目<br>- 画像選択<br>- 旅先名<br>- テキスト<br>- レビュー（星5） |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
| 詳細画面 | 1 | # 表示項目<br>- 投稿写真<br>- 旅先名<br>- 説明文<br>- 都道府県<br>- 投稿者<br>- レビュー（星5）<br>- 投稿日<br><br># 投稿ユーザーに表示<br>- 編集ボタン<br>- 削除ボタン<br><br># コメント欄<br>- コメント入力欄<br>- コメントユーザー名<br>- コメント投稿日 |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
| ユーザー管理機能 | 1 | # 条件<br>- モデルにてバリデーションの記述を行うこと<br>- 必要な情報を適切に入力すると、新規登録/ログインができること<br>- 新規登録・ログイン共にエラーハンドリングができていること（入力に問題がある状態で「会員登録」または「ログイン」ボタンが押された場合、情報は受け入れられず、各ページでエラーメッセージが表示されること）<br>- エラーハンドリングの際、1つのエラーに対して同じエラーメッセージが重複して表示されないこと<br>- モデル単体テストコードを作成すること<br><br>## 新規登録<br>- ニックネームが必須であること<br>- ニックネームは6文字以内であること<br>- メールアドレスが必須であること<br>- メールアドレスが一意性であること<br>- メールアドレスは、@を含む必要があること<br>- パスワードが必須であること<br>- パスワードは、6文字以上での入力が必須であること（6文字が入力されていれば、登録が可能なこと）<br>- パスワードは、英数字混合であること<br>- パスワードは、確認用を含めて2回入力すること<br>- パスワードとパスワード（確認用）は、値の一致が必須であること |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
| 旅先投稿機能 | 1 | # 条件<br>- モデルにてバリデーションの記述を行うこと<br>- 必要な情報を適切に入力すると、新規投稿ができること<br>- エラーハンドリングができていること<br>- エラーハンドリングの際、1つのエラーに対して同じエラーメッセージが重複して表示されないこと<br>- モデル単体テストコードを作成すること<br><br>## 新規投稿<br>- 旅先名が必須であること<br>- 都道府県選択が必須であること<br>- 画像選択が必須であること<br>- 説明文が無くても投稿できること<br>- ログアウト状態のユーザーがURLから直接アクセスした際、ログイン画面へ遷移すること |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
| 【追加実装】<br>旅先投稿機能<br>星評価 | 2 | # 条件<br>- モデルにてバリデーションの記述を行うこと<br>- 必要な情報を適切に入力すると、新規投稿ができること<br>- エラーハンドリングができていること<br>- エラーハンドリングの際、1つのエラーに対して同じエラーメッセージが重複して表示されないこと<br>- モデル単体テストコードに星評価の項目を追加すること<br><br>## 新規投稿<br>- 星評価が必須であること<br>- 星評価の編集が可能であること<br>- 星評価の結果が、詳細画面に反映されていること<br>- 星評価の結果が、トップページに反映さていること |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
| 投稿一覧表示機能 | 1 | # 条件<br>- 投稿したすべての情報が表示されていること<br>- N+1問題に注意した実装をすること<br>- 一番新しい投稿が、上に表示されること<br>- 各投稿の、画像、旅先名、レビュー（星5）が表示されること（星評価の結果反映は、星評価実装後行う） |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
| 投稿詳細表示機能 | 1 | # 条件<br>-  投稿時に登録した情報（旅先名・画像・説明文・投稿者・投稿日・都道府県）が、出力されること<br>- 画像が表示されており、画像がリンク切れなどになっていないこと（デプロイのタスクにあるとおり、実装中にHerokuの仕様による商品画像が適切に表示されなくなる問題は発生するが、最後にS3を導入することで、この問題は解消される）<br>- ログイン状態の投稿者のみ、「編集」「削除」ボタンが表示されること<br>- ログイン状態のユーザーは、コメント欄が表示されること<br>- ログアウト状態のユーザーでも、詳細表示ページを閲覧できること<br>- ログアウト状態のユーザーには、コメント欄が表示されないこと |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
| コメント機能 | 1 | # 条件<br>- モデルにてバリデーションの記述を行うこと<br>- 必要な情報を適切に入力すると、コメントができること<br>- 空のコメントは投稿できないこと<br>- コメント投稿成功時は、詳細ページへリダイレクトされること<br>- コメント投稿失敗時は、renderで詳細ページを表示すること |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
| 投稿検索機能 | 1 | # 条件<br>- テキストエリアに、検索したい文言を入力し、検索を行えること<br>- 投稿済みのすべてのレビューに対して検索を行えること<br>- 検索は旅先名、説明文の内容をヒットさせること<br>- テキストが空で検索を行っても、投稿の並び順が変わらないようにすること |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
| 投稿編集機能 | 1 | # 条件<br>- ログイン状態の投稿者のみ、投稿情報を編集できること<br>- 必要な情報を適切に入力すると、投稿情報を変更できること<br>- 何も編集せずに更新をしても画像無しの投稿にならないこと<br>- ログイン状態の投稿者のみ、編集ページに遷移できること<br>- ログイン状態のユーザーであっても、URLを直接入力して投稿していない編集ページへ遷移しようとすると、トップページに遷移すること<br>- ログアウト状態のユーザーは、URLを直接入力して編集ページへ遷移しようとすると、ログインページに遷移すること<br>- 旅先投稿時とほぼ同じ見た目で編集機能が実装されていること<br>- 旅先名や説明文など、すでに登録されている投稿情報は編集画面を開いた時点で表示されること（画像に関しては、表示されない状態で良い）<br>- エラーハンドリングができていること（入力に問題がある状態で「変更する」ボタンが押された場合、情報は保存されず、編集ページに戻りエラーメッセージが表示されること）<br>- エラーハンドリングの際、1つのエラーに対して同じエラーメッセージが重複して表示されないこと |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |
| 投稿削除機能 | 1 | # 条件<br>- ログイン状態の投稿者のみ、投稿を削除できること<br>- ログイン状態のユーザーであっても、自身が投稿した情報以外は削除できないこと |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |



# 実装機能
## ユーザー管理機能



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