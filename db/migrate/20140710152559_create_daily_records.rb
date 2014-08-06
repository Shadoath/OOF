class CreateDailyRecords < ActiveRecord::Migration
  def change
    create_table :daily_records do |t|
      t.date :daily_date
      t.integer :temp_low
      t.integer :temp_high
      t.integer :eggs_collected
      t.integer :total_ducks
      t.time :hours_of_daylight
      t.time :sunrise
      t.integer :moon_phase_id
      t.integer :moon_percent
      t.text :weather
      t.integer :rained
    end
  end
end
