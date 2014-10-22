json.array!(@trafficofficers) do |trafficofficer|
  json.extract! trafficofficer, :id, :firstname, :lastname, :middlename, :username, :hashed_password, :salt, :national_id_no, :role_id
  json.url trafficofficer_url(trafficofficer, format: :json)
end
