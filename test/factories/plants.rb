FactoryGirl.define do
   factory :plant do
      factory :engine_plant_one do
         name 'engine test plant name'
         plant_type 'engine test plant type'
         plant_group 'engine test plant group'
         comment 'engine test plant comment'
      end
   end
end