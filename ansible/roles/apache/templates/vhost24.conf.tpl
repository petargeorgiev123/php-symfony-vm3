# Default Apache virtualhost template
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /vagrant/cueball-frontend/web/
    ServerName vm3-front.dev
    ServerAlias vm3-front.dev

    <Directory /vagrant/cueball-frontend/web>
    Options Indexes FollowSymLinks
    AllowOverride None
    Require all granted
    RewriteEngine On
    DirectoryIndex frontend_dev.php
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteRule ^(.*)$ frontend_dev.php [QSA,L]
    RewriteBase /
    </Directory>
</VirtualHost>
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /vagrant/cueball-prototype1/web/
    ServerName vm3.dev
    ServerAlias vm3.dev

    <Directory /vagrant/cueball-prototype1/web>
    Options Indexes FollowSymLinks
    AllowOverride None
    Require all granted
    RewriteEngine On
    DirectoryIndex app_dev.php
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteRule ^(.*)$ app_dev.php [QSA,L]
    RewriteBase /
    </Directory>
</VirtualHost>

#<VirtualHost *:80>
    #   ServerName vm3.dev
    #ServerAlias vm3.dev

    #DocumentRoot /vagrant/cueball_prototype1/web/
    #<Directory /vagrant/cueball_prototype1/web/>
    #   AllowOverride All
    #   Order Allow,Deny
    #   Allow from All
    #</Directory>

    # uncomment the following lines if you install assets as symlinks
    # or run into problems when compiling LESS/Sass/CoffeeScript assets
    # <Directory /var/www/project>
    #     Options FollowSymlinks
    # </Directory>

    #ErrorLog /var/log/apache2/project_error.log
    #CustomLog /var/log/apache2/project_access.log combined
    #</VirtualHost>