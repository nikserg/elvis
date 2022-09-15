FROM php:8.1-cli
WORKDIR /elvis
RUN apt-get update && apt-get install -y libyaml-dev ssh git
RUN curl -sSL https://get.docker.com/ | sh
RUN pecl install yaml && echo "extension=yaml.so" > /usr/local/etc/php/conf.d/ext-yaml.ini && docker-php-ext-enable yaml
COPY elvis elvis
RUN mkdir /root/.ssh
CMD ["sh", "-c", "service docker start && cd /elvis && php elvis"]