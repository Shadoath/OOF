Feature: Navigate around site
   In order to check navigation and links
   As a basic test
   I want to check each page for functionality

Scenario: Starting from home page check Plants
   Given I am on the home page
   When I click the following links plants, New Plant, Home
   Then I should see on page "Home"
