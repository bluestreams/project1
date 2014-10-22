json.array!(@permits) do |permit|
  json.extract! permit, :id, :permit_number, :issued_date, :expiry_date, :permitowner_id
  json.url permit_url(permit, format: :json)
end
