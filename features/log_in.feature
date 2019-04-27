Feature: Let the user log in
    As a visitor,
    In order to see the articles
    I would like to log in

    Background
        Given the following user exists
            | username  | pasword      |
            | zanenkn   | Pswrd12345   |
        
        Given the following articles exists
            | title             | content                   |
            | Breaking news     | Global warming is stopped |
            | Plastic in ocean  | Start recycling today     |
    
Scenario: User logs in successfully (happy path)
    When I visit the site
    Then I should see "Log in"
    And I fill in "Username" with "zanenkn"
    And I fill in "Password" with "Pswrd12345"
    And I click "Login" button
    Then I should see "You are logged in succesfully"
    And I should see "A breaking news item"
    And I should see "Some really breaking action"
    And I should see "Learn Rails 5"
    And I should see "Build awesome rails applications"