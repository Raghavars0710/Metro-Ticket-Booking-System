class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :contact_number
      t.text :address,               default: ""
      t.string :type,                null: false
      t.string :role_description,    default: "Passenger"

      t.timestamps
    end
  end
end
