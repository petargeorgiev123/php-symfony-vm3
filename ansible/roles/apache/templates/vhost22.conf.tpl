# Default Apache virtualhost template

<VirtualHost *:80>
    ServerName vm3.dev
    ServerAlias vm3.dev

    DocumentRoot /var/www/html/
    <Directory /var/www/html/>
    AllowOverride None
    Order Allow,Deny
    Allow from All

    <IfModule mod_rewrite.c>
        Options -MultiViews
        RewriteEngine On
        RewriteCond %{REQUEST_FILENAME} !-f
        RewriteRule ^(.*)$ app.php [QSA,L]
    </IfModule>
    </Directory>

    # uncomment the following lines if you install assets as symlinks
    # or run into problems when compiling LESS/Sass/CoffeeScript assets
    # <Directory /var/www/project>
    #     Options FollowSymlinks
    # </Directory>

    # optionally disable the RewriteEngine for the asset directories
    # which will allow apache to simply reply with a 404 when files are
    # not found instead of passing the request into the full symfony stack
    <Directory /vagrant/bundles>
    <IfModule mod_rewrite.c>
        RewriteEngine Off
    </IfModule>
    </Directory>
    ErrorLog /var/log/apache2/project_error.log
    CustomLog /var/log/apache2/project_access.log combined
</VirtualHost>
