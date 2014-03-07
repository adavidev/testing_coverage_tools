Then(/^I should see my beautiful face$/) do
  page.body.should =~ /<img src="http:\/\/www.gravatar.com\/avatar\/d1e328d01486568832f4a97060df52df">/
end
