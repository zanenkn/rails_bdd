Feature: Let the user sign up
    As a visitor,
    In order to log in and view the articles
    I would like to sign up

    Background:
        Given the following articles exists
            | title             | content                   |
            | Breaking news     | Global warming is stopped |
            | Plastic in ocean  | Start recycling today     |

        Scenario: User signs up successfully (happy path)
            When I visit the site
            Then I should see "You need to sign in or sign up before continuing."
            And I click "Sign up" link
            And I fill in "user_email" with "swagger@gmail.com"
            And I fill in "user_password" with "Pswrd12345"
            And I fill in "user_password_confirmation" with "Pswrd12345"
            And I click "Sign up" button
            Then I should see "Welcome! You have signed up successfully."
            And I should see "Breaking news"
            And I should see "Global warming is stopped"
            And I should see "Plastic in ocean"
            And I should see "Start recycling today"

        Scenario: User fails to sign up - does not confirm the password (sad path)
            When I visit the site
            Then I should see "You need to sign in or sign up before continuing."
            And I click "Sign up" link
            And I fill in "user_email" with "swagger@gmail.com"
            And I fill in "user_password" with "Pswrd12345"
            And I fill in "user_password_confirmation" with "12345"
            And I click "Sign up" button
            Then I should see "Password confirmation doesn't match Password"
            And I should not see "Breaking news"
            And I should not see "Global warming is stopped"
            And I should not see "Plastic in ocean"
            And I should not see "Start recycling today"