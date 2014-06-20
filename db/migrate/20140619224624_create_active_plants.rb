class CreateActivePlants < ActiveRecord::Migration
  def change
    create_table :active_plants do |t|
      t.integer :plant_id
      t.integer :status_id
      t.integer :location_id
      t.integer :count_active
      t.integer :count_harvested
      t.text :comment

      t.timestamps
    end
  end
end
