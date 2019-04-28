Feature: Delete articles
  As a publisher
  In order to keep the content relevant in my news service
  I would like to be able to delete articles

  Background:
    Given the following articles exists
      | title               | content                           |
      | Unwanted article    | The content no one wants to see   |
      | Trendy stuff        | People are crazy about this one   |

  Scenario: Delete an article
    When I visit the site
    Then I should see "Unwanted article"
    And I should see "The content no one wants to see"
    And I should see "Trendy stuff"
    And I should see "People are crazy about this one"
    When I click the "Delete" link within "Unwanted article"
    Then I should see "Successfully deleted!"
    Then I should not see "Unwanted article"
    And I should not see "The content no one wants to see"
    And I should see "Trendy stuff"
    And I should see "People are crazy about this one"