# Default Apache virtualhost template

<VirtualHost *:80>
    ServerName vm3.dev
    ServerAlias vm3.dev

    DocumentRoot /var/www/html/
    <Directory /var/www/html/>
       AllowOverride All
       Order Allow,Deny
       Allow from All
    </Directory>

    # uncomment the following lines if you install assets as symlinks
    # or run into problems when compiling LESS/Sass/CoffeeScript assets
    # <Directory /var/www/project>
    #     Options FollowSymlinks
    # </Directory>

    ErrorLog /var/log/apache2/project_error.log
    CustomLog /var/log/apache2/project_access.log combined
</VirtualHost>