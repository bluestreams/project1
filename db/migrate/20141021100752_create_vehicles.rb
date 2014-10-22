class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :title
      t.string :vehicle_type
      t.string :vehicle_modle
      t.string :owner_passport
      t.string :entry_date
      t.integer :vehiclemanager_id
      t.string :shipped_from

      t.timestamps
    end
  end
end
