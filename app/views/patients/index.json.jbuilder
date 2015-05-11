json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :email, :address, :state, :city, :zip_code, :district, :number, :phone, :cellphone
  json.url patient_url(patient, format: :json)
end
