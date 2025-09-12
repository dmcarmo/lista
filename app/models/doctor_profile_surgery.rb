class DoctorProfileSurgery < ApplicationRecord
  belongs_to :doctor_profile
  belongs_to :surgery
end
