Feature: Merchant Authentication
 In order to manage my boutique
 As a merchant
 I should be able to log in and log out

Scenario: Merchant Logs In
  Given I am a registered merchant
  And I visit my dashboard
  When I fill in the dashboard login form
  Then I should be logged in

Scenario: Merchant Logs Out
  Given I am a registered merchant
  And I am logged in as a merchant
  And I visit my dashboard
  When I click on the log out button
  Then I should be redirected to the dashboard log in page
