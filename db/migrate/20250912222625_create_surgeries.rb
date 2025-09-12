class CreateSurgeries < ActiveRecord::Migration[8.0]
  def change
    create_table :surgeries do |t|
      t.string :name

      t.timestamps
    end
  end
end
