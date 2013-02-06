Feature: New Education History
  As a registered user of the website
  I want to add education history to my user profile
  so I can show my education history on my resume page.

    Scenario: I sign in and add a new education history to my profile
      Given I am logged in
      Then I visit the education histories page
      Then I add a new education history
      Then I should see that my new education history has been added
      When I sign out
      Then I should see a signed out message
      And I should see that my new education history has been added to my resume