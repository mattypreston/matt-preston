Feature: New Skill
  As a registered user of the website
  I want to add a skill to my user profile
  so I can show my skills on my resume page.

    Scenario: I sign in and add a new skill to my profile
      Given I am logged in
      Then I visit the skills page
      Then I add a new skill
      Then I should see that my new skill has been added
      When I sign out
      Then I should see a signed out message
      And I should see that my skill has been added to my resume