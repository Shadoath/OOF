json.array!(@daily_data) do |daily_datum|
  json.extract! daily_datum, :id, :daily_date, :temp_low, :temp_high, :eggs_collected, :total_ducks, :hours_of_daylight, :sunrise, :moon_phase_id, :moon_percent, :weather, :rained
  json.url daily_datum_url(daily_datum, format: :json)
end
