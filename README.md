# rails_api_mode_sample

Rails APIモードのDocker環境試作です。

## 環境構築手順

起動

``` .bash
$ docker-compose up -d 
```

DB作成
``` .bash
$ docker-compose run web rails db:create
```

Mysql接続
```
docker-compose exec db mysql -u root -p //設定変えていなければパスワードはpasswordになります。
```

### ruby update手順


``` .bash
$ docker-compose down
// DockerFileのruby:3.x.xを変更　、Gemfileのruty '3.x.x'を変更
$ docker-compose build
```
