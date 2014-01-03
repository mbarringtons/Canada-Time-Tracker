json.array!(@days) do |day|
  json.extract! day, :id, :days_in_canada_this_year, :days_in_canada_last_year, :days_in_canada_tax
  json.url day_url(day, format: :json)
end
