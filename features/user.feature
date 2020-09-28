Feature:  user
    As an RAILS ACTIVITY's user
    I want to create, edit a user with username, email, password and password confirmation
    so that user can sign in 

    Scenario: create user 
        Given i am at the page create user
        When i fill username 'rose', email 'rose@gmail.com', password '123456' and password confirmation '123456' 
        And i click create
        Then i see a created user message

    Scenario: edit user 
        Given i am logged with the user whose username is 'rose'
        And i am on the user's edit page with the username is 'rose'
        When i fill username 'jennie', email 'jennie@gmail.com', password '123456' and password confirmation '123456'
        And i click edit
        Then i see a updated user message

    Scenario: edit password when Password confirmation doesn't match Password
        Given i am logged with the user whose username is 'rose'
        And i am on the user's edit page with the username is 'rose'
        When i fill username 'jennie', email 'jennie@gmail.com', password '123456' and password confirmation '654321'
        And i click edit
        Then i see a user invalid message
    
    Scenario: create user with blank email
        Given i am at the page create user
        When i fill username 'lisa', email '', password '654321' and password confirmation '654321'
        And i click create
        Then i see a user invalid message 