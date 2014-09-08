class ChangePercipitaionToFloat < ActiveRecord::Migration
  def self.up
     change_column :daily_records, :precipitation, :float
  end
 
  def self.down
     change_column :daily_records, :precipitation, :integer
  end
end