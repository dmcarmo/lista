class DoctorProfile < ApplicationRecord
  has_one :service, as: :profilable, dependent: :destroy

  has_many :service_locations, through: :service
  has_many :locations, through: :service_locations

  has_many :doctor_profile_specialties
  has_many :specialties, through: :doctor_profile_specialties
  has_many :doctor_profile_surgeries
  has_many :surgeries, through: :doctor_profile_surgeries
end
