def create_skill
  @skill ||= { :skill_name => "Java", :skill_level => "80" }
end

Given /^a set of programming skills like this:$/ do |table|
  pending
end

Then /^I visit the skills page$/ do
  visit '/skills'
end

When /^I add a new skill$/ do
  create_skill
  click_link "New"
  fill_in "skill_skill_name", :with => @skill[:skill_name]
  fill_in "skill_skill_level", :with => @skill[:skill_level]
  click_button "Create Skill"
end

Then /^I should see that my new skill has been added$/ do
  page.should have_content "Java"
  page.should have_content "80"
end

Then /^I should see that my skill has been added to my resume$/ do
  page.should have_content "Java"
end