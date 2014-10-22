json.array!(@admins) do |admin|
  json.extract! admin, :id, :firstname, :lastname, :middlename, :username, :hashed_password, :salt, :national_id_no, :role_id
  json.url admin_url(admin, format: :json)
end
