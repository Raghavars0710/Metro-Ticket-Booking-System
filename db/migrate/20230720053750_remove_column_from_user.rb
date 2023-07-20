class RemoveColumnFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :type, :string, null: false
    remove_column :users, :role_description, :string, default: "Passenger"
  end
end
