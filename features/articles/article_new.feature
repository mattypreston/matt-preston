Feature: New Article
  As a registered user of the website
  I want to add a blog to my user profile
  so I can show my blogs on my resume page.

    Scenario: I sign in and add a new blog to my profile
      Given I am logged in
      Then I visit the articles page
      Then I add a new article
      Then I should see that my new article has been added
      When I sign out
      Then I should see a signed out message
      And I should see that my article has been added to my resume