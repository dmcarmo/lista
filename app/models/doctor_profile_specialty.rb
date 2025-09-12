class DoctorProfileSpecialty < ApplicationRecord
  belongs_to :doctor_profile
  belongs_to :specialty
end
