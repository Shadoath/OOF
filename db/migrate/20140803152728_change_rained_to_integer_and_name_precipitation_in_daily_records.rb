class ChangeRainedToIntegerAndNamePrecipitationInDailyRecords < ActiveRecord::Migration
  def self.up
     change_column :daily_records, :rained, :integer
     rename_column :daily_records, :rained, :precipitation
  end
 
  def self.down
     change_column :daily_records, :precipitation, :boolean
     rename_column :daily_records, :precipitation, :rained 
  end
end
