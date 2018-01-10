FROM yuncms/php:7.1-nginx

LABEL maintainer="xutongle@gmail.com"

ARG WORDPRESS_VERSION

# Environment settings
ENV WORDPRESS_VERSION=${WORDPRESS_VERSION:-4.9.1}
ENV WORDPRESS_TGZ_URL=https://cn.wordpress.org/wordpress-${WORDPRESS_VERSION}-zh_CN.tar.gz

RUN set -xe \
	&& cd /root \
	&& curl -fSL ${WORDPRESS_TGZ_URL} -o wordpress-${WORDPRESS_VERSION}-zh_CN.tar.gz \
	&& tar zxf wordpress-${WORDPRESS_VERSION}-zh_CN.tar.gz \
	&& rm -f wordpress-${WORDPRESS_VERSION}-zh_CN.tar.gz \
	&& mv /root/wordpress /app

ADD run.sh /run.sh
ADD nginx.conf /usr/local/etc/nginx/sites/blog.conf

WORKDIR /app

RUN rm -f /usr/local/etc/nginx/sites/default.conf \
	&& chown -R www-data:www-data /app \
	&& chmod 700 /run.sh

VOLUME ["/app/wp-content/uploads"]

