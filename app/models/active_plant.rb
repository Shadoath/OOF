class ActivePlant < ActiveRecord::Base
   belongs_to :plant, class_name: "Plant"
   belongs_to :plant_status, class_name: "PlantStatus"
   belongs_to :location, class_name: "Location"
   belongs_to :soil, class_name: "Soil"
end
