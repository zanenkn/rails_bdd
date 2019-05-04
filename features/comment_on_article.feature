Feature: Comment on articles
  As a visitor,
  In order to express my opinion about an article
  I would like to be able to comment on article

  Scenario: Successfully comments on an article
    Given the following articles exists
      | title              | content                            |
      | Snow in Gothenburg | Winter strikes back on 3rd of May  |
    
    When I visit the site
    Then I should see "Snow in Gothenburg"
    And I should see "Winter strikes back on 3rd of May"
    When I click the "View" link within "Snow in Gothenburg"
    And I should see "Comment on article:"
    When I fill in "Commenter" with "Gothenburger"
    And I fill in "Comment" with "Unbelievable!!!"
    And I click on "Create Comment"
    Then I should see "Unbelievable!!!"