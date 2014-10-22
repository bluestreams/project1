class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :firstname
      t.string :lastname
      t.string :middlename
      t.string :citizenship
      t.string :current_address
      t.string :home_address
      t.string :passport_no
      t.string :home_phone_no
      t.string :mobile_no

      t.timestamps
    end
  end
end
