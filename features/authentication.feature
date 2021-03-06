Feature: Authentication
 In order to use the website
 As a client
 I should be able to sign up, log in and log out

Scenario: Signing up
  Given I visit the homepage
  When I fill in the sign up form
  And I confirm the email
  Then I should see that my account is confirmed

Scenario: Client Logs In
  Given I am a registered client
  And I visit the homepage
  When I fill in the login form
  Then I should be logged in

Scenario: Client Logs Out
  Given I am a registered client
  And I am logged in
  And I visit the homepage
  When I click on the log out button
  Then I should be redirected to the log in page
