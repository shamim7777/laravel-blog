# Simple blog with laravel 5.3

[Live Demo](http://ec2-52-53-213-226.us-west-1.compute.amazonaws.com/)
 

#Feature list:  

* Editor Login
* Editor Registration
* Add new blog post with Ajax
* Edit new blog post
* Delete new blog post
* Save as draft
* List all blogs
* Pagination
* List blogs by category
* View blog details
* Social share 


**Tools & Technologies:** PHP7, Composer, AWS,  MySQL, Laravel

#Unit Test cases
* View home page.
* functional test: user registration.
* functional test user login.
* functional test registraion with duplicate email.
* functional test: Add new blog post.
* functional test: Edit blog post.
* functional test: Delete blog post.

#Install Instructions
Requirements
Debian System (Ubuntu)
 
**Step 1:  Install composer**

    curl -sS https://getcomposer.org/installer | php
	sudo mv composer.phar /usr/local/bin/composer

**Step 2:  Install git** 

    sudo apt-get install git

**Step 3: Install PHP7 with required modules** 

    sudo apt-get install -y language-pack-en-base
	sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php
	sudo apt-get update
	sudo apt-get install  php7.0 php7.0-mysql php7.0-cli php7.0-gd php7.0-json php7.0-fpm

**Step 4: Setup MySQL Database server**

    sudo apt-get install mysql-server 
	sudo mysql_secure_installation
	sudo mysql_install_db

*Note: You'll be prompted to create a root password during the installation. Choose a secure one and make sure you remember it, because you'll need it later.*

**Steo 5: Configure Apache Server**

    sudo a2enmod rewrite

Edit conf file

    vi /etc/apache2/sites-available/000-default.conf

Update the Document root
DocumentRoot /var/www/html/laravel-blog/public

    <Directory "/var/www/html/laravel-blog/public/">
      AllowOverride All
    </Directory>
    sudo server apache2 restart

**Step 6: Get the source from github**

    git clone git@github.com:shamim7777/laravel-blog.git
    cd laravel-blog

**Step 7: Create database**

    mysql -u root -p 
    ->create database figured;
    ->use figured;
    ->source figured.sql;
    ->exit;

**Step 8: Update .env file with the database information**

    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1 
    DB_PORT=3306
    DB_DATABASE=figured
    DB_USERNAME=root
    DB_PASSWORD=yourpassword
 

**Step 9: Set file permissions for storage and cache** 

    chmod -R 755 vendor storage

**Step 11: Initialize application**

    composer update
    php artisan optimize
    php artisan clear-compiled
    php artisan cache:clear
    php artisan route:clear

Voilà!!! Check it out here http://www.yourdomain.com/

This install instruction is pretty elaborated. Its important how each components works in different tier. That's is why I wrote this long setup guide. 

Thank You

@shamim7777
