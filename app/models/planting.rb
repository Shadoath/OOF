class Planting < ActiveRecord::Base
   belongs_to :active_plant
   belongs_to :plant_status
   belongs_to :location
   belongs_to :soil
   
end
