require 'test_helper'

class PlantTest < ActiveSupport::TestCase
   
   test "empty plant creation" do
      plant = Plant.new
      puts "Empty plant = "+plant.inspect
     assert_not plant.save
   end
   
   test "plant creation" do
     plant = Plant.new
     plant.name = "plant A" 
     plant.plant_type = "type B"
     plant.harvest_type_id = 4
     plant.plant_group = "group C"
     plant.water_amount_id = 2
     plant.comment = "comment D"
     assert plant.save
     puts "Plant Creation = "+plant.inspect

   end   

end
