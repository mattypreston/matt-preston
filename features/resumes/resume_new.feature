Feature: New Resume
  As a registered user of the website
  I want to add resume headline details to my user profile
  so I can show my resume headline details on my resume page.

    Scenario: I sign in and add a new blog to my profile
      Given I am logged in
      Then I visit the resumes page
      Then I add a new resume
      Then I should see that my new resume has been added
      When I sign out
      Then I should see a signed out message
      And I should see that my resume information has been added to my resume