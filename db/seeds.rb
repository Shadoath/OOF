# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#An attempt to kill the ID field back to 0
#Rake::Task["db:drop"]
#puts "DB: dropped"
#Rake::Task["db:create"]
#puts "DB: created"
#Rake::Task["db:migrate"]
#puts "DB: migrated"

MoonPhase.delete_all
MoonPhase.create(name: "New Moon", image: 'm1.gif');
MoonPhase.create(name: "Waxing crescent moon", image: 'm5.gif');
MoonPhase.create(name: "First quarter moon", image: 'm8.gif');
MoonPhase.create(name: "Waxing gibbious moon", image: 'm11.gif');
MoonPhase.create(name: "Full moon", image: 'm15.gif');
MoonPhase.create(name: "Waning gibbious moon", image: 'm20.gif');
MoonPhase.create(name: "Third quarter moon", image: 'm23.gif');
MoonPhase.create(name: "Waning crecent moon", image: 'm25.gif');
MoonPhase.create(name: "Dark/Blue Moon", image: 'm28.gif');
puts "MoonPhase Seeded"

PlantStatus.delete_all
plantStatuses = ["Dead", "Seed", "Sprouted", "Flower", "Harvestable", "Drying", "Finished"]
plantStatuses.each do |ps|  
   PlantStatus.create(name: ps);
end
puts "PlantStatus Seeded"

WaterAmount.delete_all
waterAmounts = ["Light", "Medium", "Heavy", "Bucket loads! (trees)"]
waterAmounts.each do |wa| 
   WaterAmount.create(name: wa)
end
puts "WaterAmount Seeded"

Soil.delete_all
soils = ["Basic Dirt", "Dirt + Alpaca manure", "Dirt + composted manure", "Dirt + worm tea", "Potting mixture"]
soils.each do |soil|
   Soil.create(name: soil)
end
dirtSoil = Soil.first
puts "Soil Seeded"

HarvestType.delete_all
harvestTypes = ["Single Harvest", "Continuous Harvest"]
harvestTypes.each do |harvestType|
   HarvestType.create(name: harvestType)
end
puts "HarvestType Seeded"

WeightType.delete_all
WeightType.create(name: "Ounces")
WeightType.create(name: "Pounds")
WeightType.create(name: "Count")
puts "WeightType Seeded"

Location.destroy_all
northWallBB = Location.create(name: "Big Burtha => North wall", soil_id: dirtSoil.id, size: 53)
Location.create(name: "Big Burtha => West wall", soil_id: dirtSoil.id, size: 53)
Location.create(name: "Big Burtha => South wall", soil_id: dirtSoil.id, size: 53)
Location.create(name: "Big Burtha => Raised Bed 1 (NE)", soil_id: dirtSoil.id, size: 48)
Location.create(name: "Big Burtha => Raised Bed 2 (E)", soil_id: dirtSoil.id, size: 48)
Location.create(name: "Big Burtha => Raised Bed 3 (SE)", soil_id: dirtSoil.id, size: 48)
Location.create(name: "Big Burtha => Raised Bed 4 (NW)", soil_id: dirtSoil.id, size: 48)
Location.create(name: "Big Burtha => Raised Bed 5 (W)", soil_id: dirtSoil.id, size: 48)
Location.create(name: "Big Burtha => Raised Bed 6 (SW)", soil_id: dirtSoil.id, size: 48)
Location.create(name: "Big Burtha => Hanging Planter 1 (NE)", soil_id: dirtSoil.id, size: 6)
Location.create(name: "Big Burtha => Hanging Planter 2 (SE)", soil_id: dirtSoil.id, size: 6)
Location.create(name: "Big Burtha => Hanging Planter 3 (NW)", soil_id: dirtSoil.id, size: 6)
Location.create(name: "Big Burtha => Hanging Planter 4 (SW)", soil_id: dirtSoil.id, size: 6)

9.times do |i| 
   Location.create(name: "Herb Field => Row #{i+1}", soil_id: dirtSoil.id, size: 53)
end

20.times do |i| 
   Location.create(name: "North Field => Row #{i+1}", soil_id: dirtSoil.id, size: 256)
end

4.times do |i| 
   Location.create(name: "Center Field => Row #{i+1}", soil_id: dirtSoil.id, size: 128)
end

10.times do |i| 
   Location.create(name: "South Field => Row #{i+1}", soil_id: dirtSoil.id, size: 256)
end

Location.create(name: "Outside Hoop Beds => 1 (North-east)", soil_id: dirtSoil.id, size: 64)
Location.create(name: "Outside Hoop Beds => 2", soil_id: dirtSoil.id, size: 64)
Location.create(name: "Outside Hoop Beds => 3", soil_id: dirtSoil.id, size: 64)
Location.create(name: "Outside Hoop Beds => 4 (South-east)", soil_id: dirtSoil.id, size: 64)
Location.create(name: "Outside Hoop Beds => 5", soil_id: dirtSoil.id, size: 64)
Location.create(name: "Outside Hoop Beds => 6", soil_id: dirtSoil.id, size: 64)
Location.create(name: "Outside Hoop Beds => 7", soil_id: dirtSoil.id, size: 64)
Location.create(name: "Outside Hoop Beds => 8", soil_id: dirtSoil.id, size: 64)
Location.create(name: "Outside Hoop Beds => 9", soil_id: dirtSoil.id, size: 64)
Location.create(name: "Outside Hoop Beds => 10", soil_id: dirtSoil.id, size: 64)
Location.create(name: "Outside Hoop Beds => 11", soil_id: dirtSoil.id, size: 64)
Location.create(name: "Outside Hoop Beds => 12", soil_id: dirtSoil.id, size: 64)
Location.create(name: "Outside Hoop Beds => 13 (North-west)", soil_id: dirtSoil.id, size: 64)
Location.create(name: "Outside Hoop Beds => 14", soil_id: dirtSoil.id, size: 64)
Location.create(name: "Outside Hoop Beds => 15", soil_id: dirtSoil.id, size: 64)
Location.create(name: "Outside Hoop Beds => 16 (South-west)", soil_id: dirtSoil.id, size: 64)

Location.create(name: "Starter GH", soil_id: dirtSoil.id, size: 64)

Location.create(name: "Sunflowers", soil_id: dirtSoil.id, size: 64)

Location.create(name: "Pumpkin/Melon Patch", soil_id: dirtSoil.id, size: 200)

puts "Location Seeded"

Plant.delete_all
#thymePlant = Plant.create(name: "Thyme", plant_type: "Perenials", plant_group: "Herb", harvest_type_id: continuousHarvest.id, water_amount_id: mediumWaterAmount.id) 
#Plant.create(name: "Rosemerry", plant_type: "Perenials", plant_group: "Herb", harvest_type_id: continuousHarvest.id, water_amount_id: mediumWaterAmount.id) 
#Plant.create(name: "Sage", plant_type: "Perenials", plant_group: "Herb", harvest_type_id: continuousHarvest.id, water_amount_id: mediumWaterAmount.id) 
#Plant.create(name: "Oregano", plant_type: "Perenials", plant_group: "Herb", harvest_type_id: continuousHarvest.id, water_amount_id: mediumWaterAmount.id) 
puts "Plant Seeded"

ActivePlant.delete_all
#ActivePlant.create(plant_id: thymePlant.id, location_id: northWallBB.id, plant_status_id: vedgePlantStatus.id, count_active: 8, comment: "Testing plant") 
puts "ActivePlant Seeded"


