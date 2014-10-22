json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :title, :vehicle_type, :vehicle_modle, :owner_passport, :entry_date, :vehiclemanager_id, :shipped_from
  json.url vehicle_url(vehicle, format: :json)
end
