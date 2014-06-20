class CreatePlantStatuses < ActiveRecord::Migration
  def change
    create_table :plant_statuses do |t|
      t.string :name
      t.timestamps
    end
  end
end
