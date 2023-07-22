class AddMetroServiceRefToTrain < ActiveRecord::Migration[7.0]
  def change
    add_reference :trains, :metro_service, foreign_key: true
  end
end
