class DailyRecord < ActiveRecord::Base
   belongs_to :moon_phase, class_name: "Moon_phase"

end
