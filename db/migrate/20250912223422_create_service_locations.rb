class CreateServiceLocations < ActiveRecord::Migration[8.0]
  def change
    create_table :service_locations do |t|
      t.references :service, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.string :price_range
      t.integer :system
      t.string :agreements, array: true, default: []

      t.timestamps
    end
  end
end
