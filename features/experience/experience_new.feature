Feature: New Experience History
  As a registered user of the website
  I want to add experience history to my user profile
  so I can show my experience history on my resume page.

    Scenario: I sign in and add a new experience history to my profile
      Given I am logged in
      Then I visit the experience histories page
      Then I add a new experience history
      Then I should see that my new experience history has been added
      When I sign out
      Then I should see a signed out message
      And I should see that my new experience history has been added to my resume