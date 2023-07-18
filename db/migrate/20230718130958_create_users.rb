class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :contact_number
      t.text :address
      t.string :type
      t.string :role_description

      t.timestamps
    end
  end
end
