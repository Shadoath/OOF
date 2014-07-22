class CreateMoonPhases < ActiveRecord::Migration
  def change
    create_table :moon_phases do |t|
      t.string :name
      t.string :image
      t.timestamps
    end
  end
end
