FROM alpine:3.12.0
#alpine用の環境設定
#RUN apk update
RUN apk add nginx php7 php7-fpm composer git bash vim curl lsof supervisor
RUN mkdir /run/openrc
RUN touch /run/openrc/softlevel

#php拡張
RUN apk add php7-mysqli php7-pdo_mysql php7-tokenizer php7-session

#phalconのインストール
RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.11/community" >> /etc/apk/repositories
RUN apk update
RUN apk add php7-phalcon=3.4.5-r0
#composer.json用のフォルダ
RUN mkdir devtools
RUN touch /devtools/composer.json

#ln -s /devtools/vendor/phalcon/devtools/phalcon /usr/bin/phalcon
