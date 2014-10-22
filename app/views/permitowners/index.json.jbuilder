json.array!(@permitowners) do |permitowner|
  json.extract! permitowner, :id, :firstname, :lastname, :middlename, :citizenship, :current_address, :home_address, :passport_no, :home_phone_no, :mobile_no, :permit_id
  json.url permitowner_url(permitowner, format: :json)
end
