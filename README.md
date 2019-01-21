お名前.com　vpsサーバー専用スクリプト
無料版GroupSession4.9.1を【お名前.comのVPS（KVM）プランサーバー】で稼働させる為に作成しました。

インストールを自動で行えます。

初めにセットアップ準備
yum install -y git
git clone https://github.com/gonatsugi/setup.git
chmod 755 ./setup/setup.sh
./setup/setup.sh

上記のコマンドを行うと自動でセットアップが始まります。
successが出力されたら

sudo -u tomcat /usr/tomcat/bin/startup.sh

tomcatが起動したら下記のアドレスにアクセスして完了を確認してください。
http://ＩＰアドレス:8080/gsession/

※セキュリティー設定などは別途必要ですので注意してください！！
2019年1月18日現在の設定方法です。サーバーの仕様が変更されたら使えないかもしれません。
作成者は、このスクリプトに対しての義務や責任を負いません。
