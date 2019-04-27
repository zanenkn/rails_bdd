Feature: Let the user log in
    As a visitor,
    In order to see the articles
    I would like to log in

    Background:
        Given the following user exists
            | email             | password      |
            | zanenkn@gmail.com | Pswrd12345    |
        
        Given the following articles exists
            | title             | content                   |
            | Breaking news     | Global warming is stopped |
            | Plastic in ocean  | Start recycling today     |
    
    Scenario: User logs in successfully (happy path)
        When I visit the site
        Then I should see "You need to sign in or sign up before continuing."
        And I fill in "user_email" with "zanenkn@gmail.com"
        And I fill in "user_password" with "Pswrd12345"
        And I click "Login" button
        Then I should see "Signed in successfully."
        And I should see "Breaking news"
        And I should see "Global warming is stopped"
        And I should see "Plastic in ocean"
        And I should see "Start recycling today"

    Scenario: User fails to log in, wrong password (sad path)
        When I visit the site
        Then I should see "You need to sign in or sign up before continuing."
        And I fill in "user_email" with "zanenkn@gmail.com"
        And I fill in "user_password" with "Psw12345"
        And I click "Login" button
        Then I should see "Invalid Email or password."
    
    Scenario: User fails to log in, wrong email (sad path)
        When I visit the site
        Then I should see "You need to sign in or sign up before continuing."
        And I fill in "user_email" with "zan@gmail.com"
        And I fill in "user_password" with "Psw12345"
        And I click "Login" button
        Then I should see "Invalid Email or password."