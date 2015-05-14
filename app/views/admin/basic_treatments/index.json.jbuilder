json.array!(@basic_treatments) do |admin_basic_treatment|
  json.extract! admin_basic_treatment, :id, :description, :common
  json.url admin_basic_treatment_url(admin_basic_treatment, format: :json)
end
