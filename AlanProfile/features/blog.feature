Feature: Blog Management
  In order to create a blog
  As a user
  I want to view blog posts

  Scenario: Articles List
    Given I have multiple articles with the title, Pizza, Breadsticks
    When I go to the list of articles
    Then I should see "Pizza"
    And I should see "Breadsticks"
    And I should see a link to the article with the title, "Pizza"


  Scenario: Article post
    Given I have one article with the title, Test Article, content, test_content
    When I go to the list of articles
    And I click on the link with id "link_to_article_1"
    Then I should see "Test Article"
    And I should see "This is a test of the emegency div rendering system"
