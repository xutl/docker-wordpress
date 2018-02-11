# 基于 alpine 3.7 构建的 wordpress 环境

## Build Status

[![Build Status](https://travis-ci.org/xutongle/docker-wordpress.svg?branch=master)](https://travis-ci.org/xutongle/docker-wordpress) 

## 支持的标签和相应的 `Dockerfile` 链接

标签说明，以 `x.x.x-fpm-base` 方式命名的标签，为没有开9000端口的FPM版本。用来作为父镜像打包 `nginx` 版本。

-	[`4.9.1`, `4.9`(*Dockerfile*)](https://github.com/xutongle/docker-wordpress/blob/master/Dockerfile)

## Filesystem layout

Directory                       | Description
------------------------------- | ------------------------------------------------------------------------------
`/app`       | wordpress configuration
`/usr/local/etc/php-fpm.d`       | php-fpm pool configuration
`/usr/local/etc/nginx`           | Nginx configuration path
`/usr/local/etc/nginx/sites`     | Nginx sites configuration path

File                                                | Description
--------------------------------------------------- | ------------------------------------------------------------------------------
`/usr/local/etc/php.ini`                          | PHP configuration
`/usr/local/etc/nginx/nginx.conf`                 | Global nginx configuration options
`/usr/local/etc/php-fpm.d/www.conf`               | php-fpm pool configuration
`/usr/local/etc/php/php-fpm.conf`             | PHP FPM daemon configuration

## Expand

Expand                                                | Version
--------------------------------------------------- | ------------------------------------------------------------------------------
`msgpack`                          | 0.5.7/2.0.2
`igbinary`                 | 2.0.5
`memcached`               | 2.2.0/3.0.4
`redis`             | 3.1.6
`yaml`             | 1.3.1/2.0.2
`yaconf`             | 1.0.7
`swoole`             | 2.1.0




