class Plant < ActiveRecord::Base   
   belongs_to :harvest_type
   belongs_to :water_amount
   belongs_to :plant_status

end
