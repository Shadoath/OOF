json.array!(@harvesting_records) do |harvesting_record|
  json.extract! harvesting_record, :id
  json.url harvesting_record_url(harvesting_record, format: :json)
end
