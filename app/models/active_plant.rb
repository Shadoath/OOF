class ActivePlant < ActiveRecord::Base
   belongs_to :plant, class_name: "Plant"
   belongs_to :plant_status, class_name: "PlantStatus"
   belongs_to :location, class_name: "Location"
   belongs_to :soil, class_name: "Soil"
   has_many :harvest_records
   has_one :planting
   
   
   attr_accessor :date_planted, :nutrients_added, :watered

   validates :plant_id, :location_id, :plant_status_id, :count_active, presence: true

end
