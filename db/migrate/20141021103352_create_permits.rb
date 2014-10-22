class CreatePermits < ActiveRecord::Migration
  def change
    create_table :permits do |t|
      t.string :permit_number
      t.date :issued_date
      t.date :expiry_date
      t.integer :permitowner_id

      t.timestamps
    end
  end
end
