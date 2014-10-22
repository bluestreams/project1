json.array!(@offencecauses) do |offencecause|
  json.extract! offencecause, :id, :offence_id, :permit_id, :permitofficer_id, :openning_date, :closing_date
  json.url offencecause_url(offencecause, format: :json)
end
