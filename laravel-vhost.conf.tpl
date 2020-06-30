<VirtualHost *:80>
    ServerAdmin yannlarosa@gmail.com
    DocumentRoot /var/www/html/public

    <Directory "/var/www/html/public">
    AllowOverride all
    Require all granted
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
