class Location < ActiveRecord::Base
   validates :name, :soil_id, presence: true
   belongs_to :soil, class_name: "Soil"
end
