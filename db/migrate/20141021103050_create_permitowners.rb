class CreatePermitowners < ActiveRecord::Migration
  def change
    create_table :permitowners do |t|
      t.string :firstname
      t.string :lastname
      t.string :middlename
      t.string :citizenship
      t.string :current_address
      t.string :home_address
      t.string :passport_no
      t.string :home_phone_no
      t.string :mobile_no
      t.integer :permit_id

      t.timestamps
    end
  end
end
