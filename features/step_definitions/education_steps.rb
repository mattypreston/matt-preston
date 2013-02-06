def create_education_history
  @education_history ||= { :place_of_study => "Place of study", :date_from => 15.years.ago.strftime('%m-%d-%Y'), :date_to => 10.years.ago.strftime('%m-%d-%Y'), :summary => 'Education history summary' }
end

Given /^a set of education histories like this:$/ do |table|
  pending
end

Then /^I visit the education histories page$/ do
  visit '/education_histories'
end

When /^I add a new education history/ do
  #:place_of_study, :date_from, :date_to, :summary
  create_education_history
  click_link "New"
  fill_in "education_history_place_of_study", :with => @education_history[:place_of_study]
  fill_in "education_history_date_from", :with => @education_history[:date_from]
  fill_in "education_history_date_to", :with => @education_history[:date_to]
  fill_in "education_history_summary", :with => @education_history[:summary]
  click_button "Create Education history"
end

Then /^I should see that my new education history has been added$/ do
  page.should have_content @education_history[:place_of_study]
  page.should have_content @education_history[:date_from]
  page.should have_content @education_history[:date_to]
  page.should have_content @education_history[:summary]
end

Then /^I should see that my new education history has been added to my resume$/ do
  page.should have_content @education_history[:place_of_study]
  page.should have_content Date.parse(@education_history[:date_from]).strftime('%Y')
  page.should have_content Date.parse(@education_history[:date_to]).strftime('%Y')
  page.should have_content @education_history[:summary]
end