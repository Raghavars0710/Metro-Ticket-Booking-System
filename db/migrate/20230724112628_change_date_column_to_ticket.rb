class ChangeDateColumnToTicket < ActiveRecord::Migration[7.0]
  def change
    change_column :tickets, :book_time, :time
    change_column :tickets, :book_date, :date
  end
end
