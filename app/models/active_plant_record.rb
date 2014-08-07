class ActivePlantRecord < ActiveRecord::Base
   belongs_to :active_plant
   belongs_to :plant_status   
end
