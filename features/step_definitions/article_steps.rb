Given /^I have articles titled (.+)$/ do |titles|
  titles.split(", ").each do |title|
    Article.create(title: title)
  end
end


When /^I click on the article titled (\w+)$/ do |value|
  click_link value
end

When /^I click on the link with id "(\w+)"?/ do |value|
  click_link_with_id("#" + value)
end

Then(/^I should see a description of the article$/) do
  page.find(/#article_\d_description/)
end
