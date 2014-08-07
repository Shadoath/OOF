Feature: Create a Plant 
   In order to create a active plant
   As an recorder
   I want to create a plant for the database

Scenario: A new plant needs to be created and saved
   Given I am on the home page 
   And I click the Plant link
   When I fill out the plant form with:
      | name       | plant_type | plant_group |
      | Yukon Gold | Potato     | Root        |
       And I click the Create Plant button
   Then I should see Plant was successfully created.
