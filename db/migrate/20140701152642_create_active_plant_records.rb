class CreateActivePlantRecords < ActiveRecord::Migration
  def change
     create_table :active_plant_records do |t|
        t.integer :active_plant_id
       t.date :date_processed
       t.integer :count_active
       t.integer :plant_status_id    
       t.boolean :nutrients_added
       t.text :comment
       t.timestamps
    end
  end
end
