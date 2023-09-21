# test-technique-gamma-software

This repository contains the backend, database, and frontend components of the "Project Name" project.
Installation

## Backend

1) Clone this repository:

```shell
git clone git@github.com:Kazdan1994/test-technique-gamma-software.git
```

2) Navigate to the backend directory:

```shell
cd test-technique-gamma-software/backend
```

3) Install PHP dependencies using Composer:

```shell
composer install
```

4) Configure your database connection in .env:

```shell
DATABASE_URL="postgresql://user:password@host:port/test-technique-gamma-software?serverVersion=11&charset=utf8"
```

5) Create the database schema:

You can use the file test_technique_gamma_software-dump.sql to create the database and the tables

6) Start the Symfony development server:

```shell
php bin/console server:start
```

The backend should now be accessible at http://localhost:8000.

## Database

    Make sure you have a running PostgreSQL server. You can install PostgreSQL if it's not already installed on your system.

    Create a PostgreSQL database for the project with the specified database name, user, and password in your .env file.

    Ensure that the PostgreSQL server is running and accessible.

## Frontend

1) Navigate to the frontend directory:

```shell
cd test-technique-gamma-software/frontend
```

2) Install Node.js dependencies using npm or yarn:

```shell
npm install
```

3) Build the Angular frontend:

```shell
ng build --prod
```

4) Start the Angular development server:

```shell
    ng serve
```

The frontend should now be accessible at http://localhost:4200.

## Usage

Visit http://localhost:8000 to access the Symfony backend.

Visit http://localhost:4200 to access the Angular frontend.
