Feature: Blog Management
  In order to create a blog
  As a user
  I want to view blog posts

  Scenario: Articles List
    Given I have the following article records
    |title|content|description|
    |Pizza|test_content|This is a description of the article|
    |Breadsticks|test_content|This is also a description of some other article|

    When I go to the list of articles
    Then I should see "Pizza"
    And I should see "Breadsticks"
    And I should see a link to the article with the title, "Pizza"
    And I should see a link with id "article_1_info"
    And I should see "test_content"

  Scenario: Article Expansion
    Given I have one article with the title, Test Article, content, test_content, description, "This is a description of the article"
    When I am on the list of articles
    And I click on the link with id "article_1_info"
    Then I should see "test_content"

  Scenario: Article post
    Given I have one article with the title, Test Article, content, test_content, description, "This is a description of the article"
    When I go to the list of articles
    And I click on the link with id "link_to_article_1"
    Then I should see "Test Article"
    And I should see "test_content"
