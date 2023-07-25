class AddRoleColumnToWelcome < ActiveRecord::Migration[7.0]
  def change
    add_column :welcomes, :role, :integer
  end
end
