class ChangeCountHarvestedToFloatInHarvestRecords < ActiveRecord::Migration
  def self.up
     change_column :harvesting_records, :count_harvested, :float
  end
 
  def self.down
     change_column :harvesting_records, :count_harvested, :integer
  end
end
