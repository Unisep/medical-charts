json.array!(@appointments) do |consultation|
  json.extract! consultation, :id
  json.url consultation_url(consultation, format: :json)
end
