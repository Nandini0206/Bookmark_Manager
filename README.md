# Bookmark Manager

This app creates a bookmark system in which, the user can store and manage these bookmarks. The app uses Ruby, HTML, and SQL databases with assistance from Capybara, Rspec, and Sinatra.

## User Stories
```
As the User
So that I can view the list of bookmarks.
I need a list of bookmarks
```
```
As the User
So that I can add new bookmarks.
I need to be able to add them
```

## Domain Model

<img alt="Diagram of Domain Model" src="https://raw.githubusercontent.com/Nandini0206/bookmark-manager/master/Bookmark%20list%20-%20model.jpg">
1. When the user clicks on /bookmarks it creates a GET request to the controller.
2. The controller calls the .list method from bookmarks.rb model.
3. The model sends back the bookmark array.
4. The controller sends the array to bookmarks.erb
5. The view sends back HTML.
6. The controlled then sends the HTML response back to the user.


## How to Setup the Database

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
