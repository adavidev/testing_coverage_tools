Feature: Website layout
  In order to navigate between pages
  As a user
  I want to provide a consistent UI

  Scenario: Navigation Links
    Given I have one Article with the title, Bleu, content, test_content
    When I am on the list of articles
    Then I should see a link called "Articles"
