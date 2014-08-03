class DailyRecord < ActiveRecord::Base
   #enum precipitation: { "None" => 0, "Dew" => 1, "Sprinkled" => 2, "Light Shower" => 3, "Quick Rain" => 4, "Rain" => 5, "Long Rain" => 6, "Heavy Rain" => 7, "Serious Rain" => 8, "Almost Flood" => 9, "Cats and Dogs" => 10 }
   belongs_to :moon_phase
end
