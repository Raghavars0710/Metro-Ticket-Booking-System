class CreateTrains < ActiveRecord::Migration[7.0]
  def change
    create_table :trains do |t|
      t.string :name
      t.integer :train_number
      t.string :source
      t.string :destination
      t.integer :metro_service_id

      t.timestamps
    end
  end
end
