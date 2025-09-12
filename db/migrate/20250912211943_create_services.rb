class CreateServices < ActiveRecord::Migration[8.0]
  def change
    create_table :services do |t|
      t.string :name, null: false
      t.text :description
      t.references :profilable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
