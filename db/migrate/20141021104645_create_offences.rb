class CreateOffences < ActiveRecord::Migration
  def change
    create_table :offences do |t|
      t.string :title
      t.text :description
      t.decimal :charge_fee

      t.timestamps
    end
  end
end
