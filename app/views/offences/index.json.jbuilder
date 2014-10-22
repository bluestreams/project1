json.array!(@offences) do |offence|
  json.extract! offence, :id, :title, :description, :charge_fee
  json.url offence_url(offence, format: :json)
end
