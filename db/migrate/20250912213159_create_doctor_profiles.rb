class CreateDoctorProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :doctor_profiles do |t|
      t.string :license_number
      t.boolean :online

      t.timestamps
    end
  end
end
