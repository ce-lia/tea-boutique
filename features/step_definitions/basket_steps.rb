Given /^I see an article named (.+)/ do |title|
  Article.create!(title: title)
end

When /^I press "([^\"]*)"$/ do |button|
  click_button(button)
end

Then /^I should have the article (.+) in my basket/ do |article|
  Basket.create!
  Basket.articles.include?(article)
end
