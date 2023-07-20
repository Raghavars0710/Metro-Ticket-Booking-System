class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.integer :contact_number
      t.text :address, default: ""
      t.date :date_of_birth
      t.integer :gender
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
