class CreateDoctorProfileSurgeries < ActiveRecord::Migration[8.0]
  def change
    create_table :doctor_profile_surgeries do |t|
      t.references :doctor_profile, null: false, foreign_key: true
      t.references :surgery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
