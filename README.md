# CodingTest
Coding Test in PHP Laravel


# setup instructions
I used Laragon to build and run this on Windows


How to install
- Get latest 
- Add to your web server (I used built in httpd within Laragon, with the following conf entry
<VirtualHost *:80> 
    DocumentRoot "C:/laragon/www/CodingTest/public/"
    ServerName CodingTest.test
    ServerAlias *.CodingTest.test
    <Directory "C:/laragon/www/CodingTest/public/">
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>

- I followed this guide (https://medium.com/@brice_hartmann/building-a-user-based-task-list-application-in-laravel-eff4a07e2688) to build the site with the tasks capability. 
- to setup the db schemas use  db-setup.sql OR php artisan migrate:refresh , I prefer the SQL as I can deal with the database directly
- Once the DB is setup and the site is running you can login by navigating to https://codingtest.test/
- to view tasks go to http://codingtest.test/tasks
- to view burndown go to http://codingtest.test/burndown
- To view the tasks per user try the user pass test1@test.com / test123 or test2@test.com/test123 or test3@test.com/test123
