# README

Quadrus Web Full-Stack Developer Practicum

This app is currently deployed on Heroku at [https://quadrusapp.herokuapp.com/](https://quadrusapp.herokuapp.com/)

### Technology Used

1. Ruby on Rails for Application Framework
2. Postgres for DB
3. Bootstrap for styling
4. AWS S3 for image storage
5.

### Site Navigation Instructions

1. Visit "/" or "/cars" for the landing page for the app. This page will display all the cars that are listed in the inventory. From this page a user can view the car details or place an order.

2. When on "/cars/:id" the user can preview the car details, order the car, or return to browse back on the index page.

3. The user can link to the "/cars/:id/order" page from the "/car" or "/car/:id". On this page the user can submit an order for the car which will be entered into the Orders table as an entry.

3. Since there is no Authentication currently built into the site, the different users are faked via paths. Any path with "/admin" can be assumed to be an admin only page. To enter a car into the inventory as an admin user, visit "admins/cars/new". This allows the admin to enter the car details and avialability as well as upload an image which is directly uploaded to an Amazon S3 bucket. The instance of the car will only persist the link to the image stored on S3 and will not store the image itself.

4. The admin can visit "admins/cars" to see their admin view of the car inventory. From here the Admin can delete cars from the list.

5. The admin can also preview current orders by visiting "admins/orders". This view will display all current orders and allow the admin to cancel them.

## System Requirements
(Install Instructions assumes OsX)

* This application is a Ruby on Rails 5.0.0.rc1 and Ruby 2.3.0p0.
Ensure that you have Ruby or RVM manager installed.

To install RVM run
```ruby
\curl -sSL https://get.rvm.io | bash -s stable
```

```ruby
rvm install 2.3.0
bundle install
```

## Database setup

Currently we are running Postgres version 9.4.1

```ruby
brew install postgres
```
Create the database user

```ruby
createdb  #creates defaults dbs
```
To recreate DB, from command line:

  ```rake db:drop```

  ```rake db:create```

  ```rake db:migrate```

### Testing Framework

  To run tests, from command line:
    ```rspec```

  NOTE: This app uses Rspec for unit testing. For demonstration purposes there are two test files (car_spec.rb and admins_cars_controller_spec.rb)and the app does not currently have full test coverage.
