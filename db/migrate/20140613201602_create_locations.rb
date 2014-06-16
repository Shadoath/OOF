class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :sub_name
      t.integer :soil_id
      t.integer :size
      t.string :comment

      t.timestamps
    end
  end
end
