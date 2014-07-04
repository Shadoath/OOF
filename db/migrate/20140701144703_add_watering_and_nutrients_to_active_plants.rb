class AddWateringAndNutrientsToActivePlants < ActiveRecord::Migration
  def change
     add_column "active_plants", :last_watering_date, :date
     add_column "active_plants", :last_nutrient_date, :date
  end
end
