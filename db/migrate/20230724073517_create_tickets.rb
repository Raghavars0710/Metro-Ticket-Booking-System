class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.datetime :book_time
      t.datetime :book_date
      t.integer :price

      t.timestamps
    end
  end
end
