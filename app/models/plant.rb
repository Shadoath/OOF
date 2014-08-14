class Plant < ActiveRecord::Base   
   belongs_to :harvest_type
   belongs_to :water_amount
   belongs_to :plant_status
   validates :name, uniqueness: true
   validates :name, :plant_type, :plant_group,  presence: true #:harvest_type_id, :water_amount_id,
   #
end
