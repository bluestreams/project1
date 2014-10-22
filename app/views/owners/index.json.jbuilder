json.array!(@owners) do |owner|
  json.extract! owner, :id, :firstname, :lastname, :middlename, :citizenship, :current_address, :home_address, :passport_no, :home_phone_no, :mobile_no
  json.url owner_url(owner, format: :json)
end
