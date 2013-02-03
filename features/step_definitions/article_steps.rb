def create_article
  @article ||= { :content => "This is the article content which should be seen on the resume", :name => "Main Article" }
end

Given /^a set of articles like this:$/ do |table|
  pending
end

Then /^I visit the articles page$/ do
  visit '/articles'
end

When /^I add a new article/ do
  create_article
  click_link "New"
  fill_in "article_name", :with => @article[:name]
  fill_in "article_content", :with => @article[:content]
  click_button "Create Article"
end

Then /^I should see that my new article has been added$/ do
  page.should have_content @article[:name]
  page.should have_content @article[:content]
end

Then /^I should see that my article has been added to my resume$/ do
  page.should have_content @article[:name]
  page.should have_content @article[:content]
end