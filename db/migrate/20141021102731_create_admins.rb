class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :firstname
      t.string :lastname
      t.string :middlename
      t.string :username
      t.string :hashed_password
      t.string :salt
      t.string :national_id_no
      t.integer :role_id

      t.timestamps
    end
  end
end
