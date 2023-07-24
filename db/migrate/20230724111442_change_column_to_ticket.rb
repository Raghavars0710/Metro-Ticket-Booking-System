class ChangeColumnToTicket < ActiveRecord::Migration[7.0]
  def change
    change_column :tickets, :book_time, :date
  end
end
