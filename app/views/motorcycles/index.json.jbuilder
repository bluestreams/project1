json.array!(@motorcycles) do |motorcycle|
  json.extract! motorcycle, :id, :title, :motor_cycle_type, :motor_cycle_modle, :owner_passport, :entry_date, :vehiclemanager_id, :shipped_from
  json.url motorcycle_url(motorcycle, format: :json)
end
