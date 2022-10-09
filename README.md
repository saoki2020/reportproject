## DBの環境設定を行う
### リポジトリのルートに.envを作成して以下をコピーし、任意の値を設定する
MYSQL_DATABASE=report_db
MYSQL_USER=
MYSQL_PASSWORD=
MYSQL_ROOT_PASSWORD=

## APIの環境変数を設定する
### reportApiディレクトリに.envを作成して以下をコピーし、メールサーバーの設定をする
MAIL_HOST=
MAIL_PORT=465
MAIL_USER=
MAIL_PASS=
MAIL_SECURE=ssl

## dockerコンテナを起動する
docker-compose up -d

## サンプルデータの挿入
docker cp ./sample.sql db_container:/tmp/sample.sql
docker exec -it db_container bash
mysql -u root -p report_db < tmp/sample.sql
