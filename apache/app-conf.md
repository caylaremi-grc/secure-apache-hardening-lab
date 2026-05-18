ServerTokens Prod  
ServerSignature Off  
TraceEnable Off  
FileETag MTime Size  

<VirtualHost *:80>

    ServerName app.sci.ch
    DocumentRoot /var/www/html

    CustomLog ${APACHE_LOG_DIR}/access.log combined
    ErrorLog ${APACHE_LOG_DIR}/error.log

    Header always set Strict-Transport-Security "max-age=31536000; includeSubDomains; preload"
    Header always set Content-Security-Policy "default-src 'self'; script-src 'none'; object-src 'none'"
    Header always set X-Frame-Options "SAMEORIGIN"
    Header always set X-Content-Type-Options "nosniff"

    <Directory /var/www/html>

        Options -Indexes +FollowSymLinks

        <RequireAll>
            Require ip 192.168.1.10
            Require ip 192.168.1.11
            Require ip 10.0.0.0/24

            Require not ip 192.168.1.50
            Require not ip 203.0.113.0/24
        </RequireAll>

        <LimitExcept GET POST HEAD>
            Require all denied
        </LimitExcept>

        AllowOverride None
        Require all granted

    </Directory>

</VirtualHost>
