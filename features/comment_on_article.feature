Feature: Comment on articles
  As a visitor,
  In order to express my opinion about an article
  I would like to be able to comment on article

  Background:
    Given the following articles exists
      | title              | content                            |
      | Snow in Gothenburg | Winter strikes back on 3rd of May  |
    
    When I visit the site
    Then I should see "Snow in Gothenburg"
    And I should see "Winter strikes back on 3rd of May"
    When I click the "View" link within "Snow in Gothenburg"
    And I should see "Comment on article:"

  
  Scenario: Successfully comments on an article (happy path)
    When I fill in "comment_commenter" with "Gothenburger"
    And I fill in "comment_body" with "Unbelievable!!!"
    And I click on "Create Comment"
    Then I should see "Comment posted successfully."
    And I should see "Name: Gothenburger"
    And I should see "Comment: Unbelievable!!!"

  Scenario: Visitor fails to comment on an article, does not enter any comment (sad path)
    When I fill in "comment_commenter" with "Gothenburger"
    And I click on "Create Comment"
    Then I should see "Failed to post comment. Make sure you fill in 'Name' and 'Comment' fields."

  Scenario: Visitor fails to comment on an article, does not enter any comment (sad path)
    When I fill in "comment_body" with "That is not true!"
    And I click on "Create Comment"
    Then I should see "Failed to post comment. Make sure you fill in 'Name' and 'Comment' fields."