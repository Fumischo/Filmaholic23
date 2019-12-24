
# *Filmaholic*

# *コンセプト*
Amazon prime、hulu、Netflixから観たい映画をレビューを参考に見つけるアプリ。

# *バージョン情報*
Ruby 2.6.3  
Rails 5.2.4

# *機能一覧*
 * ログイン機能  
   * ユーザー登録機能  
   * メールアドレス、名前、パスワードは必須  
   * サインアップ、パスワード変更した際にメールが届く  
   * パスワード再設定機能  
 
* 視聴媒体検索機能  
  *  amazon、hulu,Netflixの3媒体を表示  
  *  映画のタイプ検索機能  
  *  邦画、洋画、アニメの3タイプを表示  

*  映画のタイトル、ジャンルからレビューが検索できる機能

 *  レビュー投稿機能
 *  投稿者名、映画のレビュー、5段階評価を投稿できる。
 

[カタログ設計](https://docs.google.com/spreadsheets/d/1jDhjZZb9sK8EXOst9NT0HSTwPBF3sZP68FSuT2hhjNI/edit?pli=1#gid=0)

[テーブル定義](https://docs.google.com/spreadsheets/d/1jDhjZZb9sK8EXOst9NT0HSTwPBF3sZP68FSuT2hhjNI/edit?pli=1#gid=0)

[画面遷移図](https://cacoo.com/diagrams/e9EVOPVt0Wc25LzV/D49F9)

[画面ワイヤーフレーム](https://docs.google.com/spreadsheets/d/1lmpSzBYg-URmZilsH7m062gjdfm_ENRKA-Kxqt39aL4/edit#gid=0)

# *使用予定Gem*
dotenv-rails  
will_paginate  
will_paginate-bootstrap  
bcrypt  
carrierwave  
bootstrap  
jquery-rails  
sass-rails  
devise  
devise-bootstrap-views  
devise-i18n  
devise-i18n-views  
omniauth  
omniauth-google-oauth2  
rspec-rails  
letter_opener_web  
pry-rails  
better_errors  
binding_of_caller  
