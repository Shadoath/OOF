class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :type
      t.string :group
      t.string :water_amount
      t.string :comment

      t.timestamps
    end
  end
end
