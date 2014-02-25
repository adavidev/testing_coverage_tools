When /^I go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^I am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then /I should see "(.+)"/ do |content|
  page.body.should =~ /#{content}/
end

Then /I should see a link called "(.+)"/ do |content|
  page.body.should =~ /<a href=".+">#{content}<\/a>/
end

Then /I should see a link to "(.+)"/ do |content|
  page.body.should =~ /<a href="#{content}">.+<\/a>/
end

Then(/^I should see a link with id "(.+)"$/) do |id|
  page.find("#"+id)
end

Given /^I have the following (\w+) records/ do |model, table|
  table.hashes.each do |hash|
    model.titlecase.constantize.create(hash)
  end
end

Then(/^I should see a link to the (\w+) with the (\w+), "(.+)"$/) do |model, attr, value|
  model_class = model.titlecase.constantize
  obj = model_class.send("find_by_#{attr}".to_sym, value)
  expect{page.find("#link_to_#{model}_#{obj.id}")}.not_to raise_error
end

Given /^I have one (.+) with the (.+)$/ do |model, fields|
  values = fields.split(", ")
  model.titlecase.constantize.create({values[0].to_sym => values[1], values[2].to_sym => values[3]})
end

Given /^I have multiple (.+) with the (\w+), (.+)$/ do |models, field, values|
  model = models.singularize.titlecase
  values.split(", ").each do |value|
    model.constantize.create({field.to_sym => value})
  end
end

