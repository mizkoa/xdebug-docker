FROM  webdevops/php-apache-dev
ENV XDEBUGINI_PATH=/etc/php/7.0/mods-available/xdebug.ini
RUN apt-get update; \
apt-get install less; \
apt-get install nano; \
echo "zend_extension=\"/usr/lib/php/20151012/xdebug.so\"\nxdebug.remote_enable=1\nxdebug.remote_host=127.0.0.1\nxdebug.remote_port=9000\nxdebug.profiler_output_dir=\"/app\"\nxdebug.idekey=PHPSTORM\n" > /etc/php/7.0/mods-available/xdebug.ini; \
sed -i 's/xdebug.idekey.*/xdebug.idekey=PHPSTORM/' /etc/php/7.0/fpm/conf.d/98-webdevops.ini; \
