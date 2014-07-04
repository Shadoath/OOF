class HarvestingRecord < ActiveRecord::Base
   belongs_to :active_plant, class_name: "ActivePlant"
   belongs_to :weight_type, class_name: "WeightType"
   
   validates :active_plant_id, :date_harvested, :count_harvested, :weight_type_id, presence: true

end
