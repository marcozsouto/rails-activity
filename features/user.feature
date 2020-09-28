Feature:  user
    As an RAILS ACTIVITY's user
    I want to create, edit a user with username, email, password and password confirmation
    so that user can sign in 

    Scenario: create user 
        Given i am at the page create user
        When i fill username 'rose', email 'rose@gmail.com', password '123456' and password confirmation '123456' 
        And i click create
        Then i see a created user message

    