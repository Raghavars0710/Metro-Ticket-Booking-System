class AddColumnToTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :train_id, :integer
    add_column :tickets, :user_id, :integer
  end
end
