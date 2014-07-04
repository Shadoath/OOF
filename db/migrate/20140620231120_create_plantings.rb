class CreatePlantings < ActiveRecord::Migration
  def change
    create_table :plantings do |t|
      t.integer :active_plant_id
      t.integer :plant_status_id
      t.integer :location_id
      t.integer :count_planted
      t.date :date_planted
      t.text :comment
      t.timestamps
    end
  end
end
