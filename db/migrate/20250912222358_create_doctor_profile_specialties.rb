class CreateDoctorProfileSpecialties < ActiveRecord::Migration[8.0]
  def change
    create_table :doctor_profile_specialties do |t|
      t.boolean :sex_therapist
      t.references :doctor_profile, null: false, foreign_key: true
      t.references :specialty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
