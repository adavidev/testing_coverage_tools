Feature: Article Creation
  In order to publish articles
  As a develpoer
  I want to have a page to post articles from jsbin

  Scenario: New Articles Page
    Given I have no articles
    When I am on the list of articles
    And I click on the link with id "link_to_new_article"
    Then I should see "Title"
    And I should see "Content"
    And I should see "Description"

  Scenario:Articles Index page should be showing jsbin examples
    Given I have the following article records
    |title|content|description|
    |Pizza|http://jsbin.com/yos/13.html|This is a description of the article|
    |Breadsticks|http://jsbin.com/piqow/15.html|This is also a description of some other article|

  When I am on the list of articles
  Then I should see "JsbinHtml"
  And I should see "http://jsbin.com/piqow/15.html"
