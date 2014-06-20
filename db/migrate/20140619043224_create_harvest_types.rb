class CreateHarvestTypes < ActiveRecord::Migration
  def change
    create_table :harvest_types do |t|
      t.string :name
      t.timestamps
    end
  end
end
