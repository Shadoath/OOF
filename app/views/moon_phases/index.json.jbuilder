json.array!(@moon_phases) do |moon_phase|
  json.extract! moon_phase, :id, :name, :image
  json.url moon_phase_url(moon_phase, format: :json)
end
