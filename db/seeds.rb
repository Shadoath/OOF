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
PlantStatus.create(name: "Dead");
PlantStatus.create(name: "Seed");
PlantStatus.create(name: "Sprouted");
vedgePlantStatus = PlantStatus.create(name: "Vedge");
PlantStatus.create(name: "Flower");
PlantStatus.create(name: "Harvest Ready");
PlantStatus.create(name: "Drying");
PlantStatus.create(name: "Finished");
puts "PlantStatus Seeded"

WaterAmount.delete_all
WaterAmount.create(name: "Light")
mediumWaterAmount = WaterAmount.create(name: "Medium")
WaterAmount.create(name: "Heavy")
WaterAmount.create(name: "Bucket loads! (trees)")
puts "WaterAmount Seeded"

Soil.delete_all
Soil.create(name: "Basic Dirt")
Soil.create(name: "Dirt + Alpaca manure")
Soil.create(name: "Dirt + composted manure")
Soil.create(name: "Dirt + worm tea")
Soil.create(name: "Potting mixture")
puts "Soil Seeded"

HarvestType.delete_all
HarvestType.create(name: "Single Harvest")
continuousHarvest = HarvestType.create(name: "Continuous Harvest")
#HarvestType.create(name: "Weekly Harvest")
#HarvestType.create(name: "Annual Harvest")
puts "HarvestType Seeded"

WeightType.delete_all
WeightType.create(name: "Ounces")
WeightType.create(name: "Pounds")
WeightType.create(name: "Count #")
puts "WeightType Seeded"

Location.delete_all
northWallBB = Location.create(name: "Big Burtha => North wall", soil_id: 2, size: 53)
Location.create(name: "Big Burtha => West wall", soil_id: 2, size: 53)
Location.create(name: "Big Burtha => South wall", soil_id: 2, size: 53)
Location.create(name: "Big Burtha => Raised Bed 1 (NE)", soil_id: 2, size: 48)
Location.create(name: "Big Burtha => Raised Bed 2 (E)", soil_id: 2, size: 48)
Location.create(name: "Big Burtha => Raised Bed 3 (SE)", soil_id: 2, size: 48)
Location.create(name: "Big Burtha => Raised Bed 4 (NW)", soil_id: 2, size: 48)
Location.create(name: "Big Burtha => Raised Bed 5 (W)", soil_id: 2, size: 48)
Location.create(name: "Big Burtha => Raised Bed 6 (SW)", soil_id: 2, size: 48)
Location.create(name: "Big Burtha => Hanging Planter 1 (NE)", soil_id: 2, size: 6)
Location.create(name: "Big Burtha => Hanging Planter 2 (SE)", soil_id: 2, size: 6)
Location.create(name: "Big Burtha => Hanging Planter 3 (NW)", soil_id: 2, size: 6)
Location.create(name: "Big Burtha => Hanging Planter 4 (SW)", soil_id: 2, size: 6)

Location.create(name: "Herb Field => All Rows", soil_id: 2, size: 53)

Location.create(name: "North Field => Row 1 (North most)", soil_id: 2, size: 256)
Location.create(name: "North Field => Row 2", soil_id: 4, size: 256)
Location.create(name: "North Field => Row 3", soil_id: 4, size: 256)
Location.create(name: "North Field => Row 4", soil_id: 4, size: 256)
Location.create(name: "North Field => Row 5", soil_id: 4, size: 256)
Location.create(name: "North Field => Row 6", soil_id: 4, size: 256)
Location.create(name: "North Field => Row 7", soil_id: 4, size: 256)
Location.create(name: "North Field => Row 8", soil_id: 4, size: 256)
Location.create(name: "North Field => Row 9", soil_id: 4, size: 256)

Location.create(name: "Center Field => Row 1", soil_id: 4, size: 128)
Location.create(name: "Center Field => Row 2", soil_id: 4, size: 128)
Location.create(name: "Center Field => Row 3", soil_id: 4, size: 128)
Location.create(name: "Center Field => Row 4", soil_id: 4, size: 128)

Location.create(name: "South Field => Row 1-6", soil_id: 2, size: 256)
Location.create(name: "South Field => Row 7 (South)", soil_id: 2, size: 256)
Location.create(name: "South Field => Row 8 (East)", soil_id: 2, size: 256)

Location.create(name: "Outside Hoop Beds => A1 (NE)", soil_id: 2, size: 64)
Location.create(name: "Outside Hoop Beds => A2 (N)", soil_id: 2, size: 64)
Location.create(name: "Outside Hoop Beds => A3 (N)", soil_id: 2, size: 64)
Location.create(name: "Outside Hoop Beds => A4 (NW)", soil_id: 2, size: 64)
Location.create(name: "Outside Hoop Beds => B1 (E)", soil_id: 2, size: 64)
Location.create(name: "Outside Hoop Beds => B2", soil_id: 2, size: 64)
Location.create(name: "Outside Hoop Beds => B3", soil_id: 2, size: 64)
Location.create(name: "Outside Hoop Beds => B4 (W)", soil_id: 2, size: 64)
Location.create(name: "Outside Hoop Beds => C1 (E)", soil_id: 2, size: 64)
Location.create(name: "Outside Hoop Beds => C2", soil_id: 2, size: 64)
Location.create(name: "Outside Hoop Beds => C3", soil_id: 2, size: 64)
Location.create(name: "Outside Hoop Beds => C4 (W)", soil_id: 2, size: 64)
Location.create(name: "Outside Hoop Beds => D1 (SE)", soil_id: 2, size: 64)
Location.create(name: "Outside Hoop Beds => D2 (S)", soil_id: 2, size: 64)
Location.create(name: "Outside Hoop Beds => D3 (S)", soil_id: 2, size: 64)
Location.create(name: "Outside Hoop Beds => D4 (SW)", soil_id: 2, size: 64)

Location.create(name: "Pumpkin Patch => Holes 1-30", soil_id: 3, size: 200)
puts "Location Seeded"

Plant.delete_all
thymePlant = Plant.create(name: "Thyme", plant_type: "Perenials", plant_group: "Herb", harvest_type_id: continuousHarvest.id, water_amount_id: mediumWaterAmount.id) 
Plant.create(name: "Rosemerry", plant_type: "Perenials", plant_group: "Herb", harvest_type_id: continuousHarvest.id, water_amount_id: mediumWaterAmount.id) 
puts "Plant Seeded"


ActivePlant.delete_all
ActivePlant.create(plant_id: thymePlant.id, location_id: northWallBB.id, plant_status_id: vedgePlantStatus.id, count_active: 4, comment: "Testing plant") 
puts "ActivePlant Seeded"


