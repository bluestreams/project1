json.array!(@permitofficers) do |permitofficer|
  json.extract! permitofficer, :id, :firstname, :lastname, :middlename, :username, :hashed_password, :salt, :national_id_no, :role_id
  json.url permitofficer_url(permitofficer, format: :json)
end
