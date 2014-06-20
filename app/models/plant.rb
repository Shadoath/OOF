class Plant < ActiveRecord::Base   
   belongs_to :harvest_type
   belongs_to :water_amount
end
