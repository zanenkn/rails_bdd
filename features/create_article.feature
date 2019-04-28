Feature: Create articles
  As a publisher
  In order to add relevant content to my news service
  I would like to be able to create articles

  Background:
    Given the following user exists
            | email             | password      |
            | zanenkn@gmail.com | Pswrd12345    |

    And I am logged in as "zanenkn@gmail.com"
    And I visit the site
    And I click "new_article" link
    And I should be on New Article page

  Scenario: Successfully create an article [Happy Path]
    When I fill in "Title" with "Can tigers purr?"
    And I fill in "Content" with "British scientists are confused, you will never believe this"
    And I click "create" button
    Then I should be on "Can tigers purr?" page
    And I should see "Article was successfully created."
    And I should see "Can tigers purr?"
    And I should see "British scientists are confused, you will never believe this"

  Scenario: Publisher doesn't enter a title for the article [Sad Path]
    When I fill in "Content" with "British scientists are confused, you will never believe this"
    And I click "create" button
    Then I should see "Title can't be blank"
  
  Scenario: Publisher doesn't enter any content for the article [Sad Path]
    When I fill in "Title" with "Can tigers purr?"
    And I click "create" button
    Then I should see "Content can't be blank"