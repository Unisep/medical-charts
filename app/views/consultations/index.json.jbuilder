json.array!(@consultations) do |consultation|
  json.extract! consultation, :id
  json.url consultation_url(consultation, format: :json)
end
