class CreateHarvestingRecords < ActiveRecord::Migration
  def change
    create_table :harvesting_records do |t|
       t.integer :active_plant_id
       t.date :date_harvested
       t.integer :count_harvested
       t.integer :weight_type_id       
      t.timestamps
    end
  end
end
