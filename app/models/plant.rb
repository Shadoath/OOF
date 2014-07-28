class Plant < ActiveRecord::Base   
   belongs_to :harvest_type
   belongs_to :water_amount
   belongs_to :plant_status
   
   validates :name, :plant_type, :plant_group, :harvest_type_id, :water_amount_id, presence: true
   #
end
