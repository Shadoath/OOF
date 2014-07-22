class CreateActivePlantRecords < ActiveRecord::Migration
  def change
     create_table :active_plant_records do |t|
        t.integer :active_plant_id
        t.date :process_date
        t.boolean :nutrients_added
        t.integer :count_active   
        t.text :comment       
        t.timestamps
    end
  end
end
