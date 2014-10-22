class CreateOffencecauses < ActiveRecord::Migration
  def change
    create_table :offencecauses do |t|
      t.integer :offence_id
      t.integer :permit_id
      t.integer :permitofficer_id
      t.date :openning_date
      t.date :closing_date

      t.timestamps
    end
  end
end
