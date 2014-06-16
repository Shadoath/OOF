json.array!(@soils) do |soil|
  json.extract! soil, :id, :name
  json.url soil_url(soil, format: :json)
end
