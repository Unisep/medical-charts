json.array!(@appointments) do |appointment|
  json.extract! appointment, :id
  json.url appointment_url(appointment, format: :json)
end
