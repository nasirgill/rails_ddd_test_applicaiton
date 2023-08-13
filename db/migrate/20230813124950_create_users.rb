class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :balance
      t.date :date_of_birth
      t.string :place_of_birth_of_customer

      t.timestamps
    end
  end
end
