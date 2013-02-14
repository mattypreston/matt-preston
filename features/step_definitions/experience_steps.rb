def create_experience_history
  @experience_history ||= { :place_of_work => 'Place of work', :position => 'Position', :date_from => 15.years.ago.strftime('%Y-%m-%d'), :date_to => 10.years.ago.strftime('%Y-%m-%d'), :summary => 'Experience history summary' }
end

Given /^a set of experience histories like this:$/ do |table|
  pending
end

Then /^I visit the experience histories page$/ do
  visit '/experience_histories'
end

When /^I add a new experience history/ do
  #:place_of_study, :date_from, :date_to, :summary
  create_experience_history
  click_link "New"
  fill_in "experience_history_place_of_work", :with => @experience_history[:place_of_work]
  fill_in "experience_history_position", :with => @experience_history[:position]
  fill_in "experience_history_date_from", :with => @experience_history[:date_from]
  fill_in "experience_history_date_to", :with => @experience_history[:date_to]
  fill_in "experience_history_summary", :with => @experience_history[:summary]
  click_button "Create Experience history"
end

Then /^I should see that my new experience history has been added$/ do
  page.should have_content @experience_history[:place_of_work]
  page.should have_content @experience_history[:position]
  page.should have_content @experience_history[:date_from]
  page.should have_content @experience_history[:date_to]
  page.should have_content @experience_history[:summary]
end

Then /^I should see that my new experience history has been added to my resume$/ do
  page.should have_content @experience_history[:place_of_work]
  page.should have_content @experience_history[:position]
  page.should have_content Date.parse(@experience_history[:date_from]).strftime('%Y')
  page.should have_content Date.parse(@experience_history[:date_to]).strftime('%Y')
  page.should have_content @experience_history[:summary]
end