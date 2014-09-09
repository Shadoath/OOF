class DailyRecord < ActiveRecord::Base
   #enum precipitation: { "None" => 0, "Dew" => 1, "Sprinkled" => 2, "Light Shower" => 3, "Quick Rain" => 4, "Rain" => 5, "Long Rain" => 6, "Heavy Rain" => 7, "Serious Rain" => 8, "Almost Flood" => 9, "Cats and Dogs" => 10 }
   belongs_to :moon_phase
   
   validates :daily_date, :weather, presence: true
   validates :temp_high, :temp_low, :eggs_collected, :total_ducks, :moon_percent, :precipitation, numericality: true
   
   validates :daily_date, uniqueness: true
end
