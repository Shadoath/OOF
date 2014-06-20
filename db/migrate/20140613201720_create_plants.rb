class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :plant_type
      t.string :group
      t.integer :water_amount_id
      t.integer :harvest_type_id
      t.string :comment

      t.timestamps
    end
  end
end
