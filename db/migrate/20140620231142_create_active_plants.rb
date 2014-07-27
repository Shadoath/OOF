class CreateActivePlants < ActiveRecord::Migration
  def change
     create_table :active_plants do |t|
        t.integer :active_plant_id
        t.integer :plant_status_id 
        t.integer :location_id 
        t.integer :count_active
        t.text :comment       
        t.timestamps
    end
  end
end
