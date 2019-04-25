# Bookmark Manager

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
<img alt="Diagram of Domain Model" src="https://raw.githubusercontent.com/Nandini0206/bookmark-manager/master/Bookmark%20list%20-%20model.jpg">
- When the user clicks on /bookmarks it creates a GET request to the controller.
- The controller calls the .list method from bookmarks.rb model.
- The model sends back the bookmark array.
- The controller sends the array to bookmarks.erb
- The view sends back HTML.
- The controlled then sends the HTML response back to the user.
