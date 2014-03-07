Feature: Profile Header
  In order to see my beautiful face
  As a user
  I want to slap my gravatar on the main page layout

  Scenario: Page Layout
    Given I have no articles
    When I am on the list of articles
    Then I should see "Alan Davis"
    And I should see my beautiful face
