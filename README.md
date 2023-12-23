## Guard を使った Haml + Sass ビルドシステム
### 使い方
1. 必要なライブラリをインストール
```sh
$ bundle install
```
2. Guard を実行
```sh
$ bundle exec guard
```
3. public に出力される html ファイルをブラウザで開く

### 注意
* css ファイルや画像等をロードする際は、専用のヘルパーを使用してください
  * ファイル名の末尾にランダム文字列が付与されます
  * 運用中に同一ファイル名で更新を行った際にユーザの環境がキャッシュしていて更新されない…という事態を防ぐことができます
* html 上で読み込む各種ファイルのパスは、public を基準にして記述してください
* haml 上で読み込む haml のパスは、src/haml を基準にして記述してください
* 詳しくはサンプルファイルを参照してください

### その他
* 公式の [guard-haml](https://github.com/guard/guard-haml) が最新の haml の記法に対応していなかったため、fork して修正したものを使用しています
  * https://github.com/comorebi-notes/guard-haml
