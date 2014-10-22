class CreateMotorcycles < ActiveRecord::Migration
  def change
    create_table :motorcycles do |t|
      t.string :title
      t.string :motor_cycle_type
      t.string :motor_cycle_modle
      t.string :owner_passport
      t.string :entry_date
      t.integer :vehiclemanager_id
      t.string :shipped_from

      t.timestamps
    end
  end
end
