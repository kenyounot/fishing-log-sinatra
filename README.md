Home screen shows login page
Option for public logs at header

Also has button to redirect to create account
User
    has name
    has unique email
    has password
    has_many logs
    can login
    can logout
    

Log
    Date and Time
    Location
    Wind Direction
    Wind Speed
    Moon Phase
    Tide Phase
    Catch Name
    Catch Length
    Trip Comments
    Public or Private

After log in redirects to /logs page
    shows users log

Asks if you want to create new log
    














Build an MVC Sinatra application.
Use ActiveRecord with Sinatra.
Use multiple models.
Use at least one has_many relationship on a User model and one belongs_to relationship on another model.
Must have user accounts - users must be able to sign up, sign in, and sign out.
Validate uniqueness of user login attribute (username or email).
Once logged in, a user must have the ability to create, read, update and destroy the resource that belongs_to user.
Ensure that users can edit and delete only their own resources - not resources created by other users.
Validate user input so bad data cannot be persisted to the database.
BONUS: Display validation failures to user with error messages. (This is an optional feature, challenge yourself and give it a shot!)