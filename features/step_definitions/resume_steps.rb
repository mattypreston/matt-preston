def create_resume
  @resume ||= { :name => "Resume Owner", :title => "Resume Title", :objective => "Resume Objective" }
end

Given /^a set of resumes like this:$/ do |table|
  pending
end

Then /^I visit the resumes page$/ do
  visit '/resumes'
end

When /^I add a new resume/ do
  create_resume
  click_link "New"
  fill_in "resume_name", :with => @resume[:name]
  fill_in "resume_title", :with => @resume[:title]
  fill_in "resume_objective", :with => @resume[:objective]
  click_button "Create Resume"
end

Then /^I should see that my new resume has been added$/ do
  page.should have_content @resume[:name]
  page.should have_content @resume[:title]
  page.should have_content @resume[:objective]
end

Then /^I should see that my resume information has been added to my resume$/ do
  page.should have_content @resume[:name]
  page.should have_content @resume[:title]
  page.should have_content @resume[:objective]
end