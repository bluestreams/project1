json.array!(@vehiclemanagers) do |vehiclemanager|
  json.extract! vehiclemanager, :id, :firstname, :lastname, :middlename, :username, :hashed_password, :salt, :national_id_no, :role_id
  json.url vehiclemanager_url(vehiclemanager, format: :json)
end
