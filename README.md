<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## Installation

Please check the official laravel installation guide for server requirements before you start. [Official Documentation](https://laravel.com/docs/9.x/installation)

### Clone the Repository

    git clone git@github.com:hgorkemtunc/blog.git

### Switch to the repo folder

    cd blog

### Install All the Dependencies Using Composer

    composer install

### Install NPM Packages

    php npm install && php npm run dev

### Database Migration

First, we should configure our database settings.

    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=blog
    DB_USERNAME=root
    DB_PASSWORD=

Then, We will create database tables via migration by executing the below command.

    php artisan migrate

### Start the Local Development Server

    php artisan serve

You can now access the server at http://localhost:8000

## Database Seeding

Open the DatabaseSeeder and set the property values as per your requirement

    database/seeds/DatabaseSeeder.php

Run the database seeder.

    php artisan migrate:refresh --seed

## Code Overview

### Dependencies

- [laravel/ui](https://github.com/laravel/ui) -  Laravel UI utilities and presets.
- [bootstrap](https://github.com/twbs/bootstrap) - Powerful, extensible, and feature-packed frontend toolkit.
- [sweetalert.js](https://github.com/t4t5/sweetalert) -  A beautiful replacement for JavaScript's "alert" 

### Folders

- `app` - Contains all the Eloquent models
- `config` - Contains all the application configuration files
- `database/factories` - Contains the model factory for all the models
- `database/migrations` - Contains all the database migrations
- `database/seeds` - Contains the database seeder
- `routes` - Contains all the routes defined in web.php file
- `sql` - Contains .sql database file

### Environment variables

- `.env` - Environment variables can be set in this file

You can quickly set the database information and other variables in this file and have the application fully working.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
