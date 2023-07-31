class CreateMetroServices < ActiveRecord::Migration[7.0]
  def change
    create_table :metro_services do |t|
      t.string :source
      t.string :destination

      t.timestamps
    end
  end
end
