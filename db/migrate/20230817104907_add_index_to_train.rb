class AddIndexToTrain < ActiveRecord::Migration[7.0]
  def change
    add_index :trains, :metro_service_id
  end
end
