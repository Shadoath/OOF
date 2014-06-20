class CreateWaterAmounts < ActiveRecord::Migration
  def change
    create_table :water_amounts do |t|
      t.string :name
    end
  end
end
