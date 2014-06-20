json.array!(@harvest_types) do |harvest_type|
  json.extract! harvest_type, :id, :name
  json.url harvest_type_url(harvest_type, format: :json)
end
