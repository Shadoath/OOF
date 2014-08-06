Feature: Create a Plant 
   In order to create a active plant
   As an recorder
   I want to create a plant for the database

Scenario: A new plant needs to be created and saved
   Given the following plant
      | name       | plant_type | plant_group |
      | Yukon Gold | Potato     | Root        |
   When I go to the list of plants
   Then I should see "Yukon Gold"
