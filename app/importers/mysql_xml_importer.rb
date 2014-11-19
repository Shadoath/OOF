# Manages importing images from the internet and storing them into the CDN
class MysqlXmlImporter  
	def initialize()
	
	end
	
	# Loop through XML and get cam data we want based on Cams in DB
	def import
		import_daily
	end
	def import_daily
		root = Rails.root.to_s
		f = File.open("#{root}/app/importers/2014_11_05_daily.xml")
		daily_xml = Nokogiri::XML(f)
		f.close
		
		daily_all = daily_xml.xpath("//table")
		daily_all.each do |day|
			day_col = day.xpath("column") 
         day_array = {}
			day_col.each do |attr_name| 
				if attr_name.inner_text == "NULL" || attr_name.inner_text == "0000-00-00"
				day_array[attr_name.attributes['name'].to_s] = nil
			else
				day_array[attr_name.attributes['name'].to_s] = attr_name.inner_text
			end
		end
		puts "$$$$.$$ day_array= #{day_array.inspect}"
      ap = DailyRecord.find_or_initialize_by(daily_date: day_array['date'], temp_low: day_array['temp_low'], temp_high: day_array['temp_high'], 
         eggs_collected: day_array['eggs_collected'], total_ducks: day_array['total_ducks'], 
         hours_of_daylight: day_array['hours_of_daylight'], sunrise: day_array['sunrise'],
         moon_phase_id: day_array['moon_phase_id'], moon_percent: day_array['moon_percent'],
         weather: day_array['weather'], precipitation: day_array['rained'])
			ap.save(validate: false)
		end
	puts "Import complete"
	end
end