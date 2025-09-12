class Specialty < ApplicationRecord
  has_many :doctor_profile_specialties
  has_many :doctor_profiles, through: :doctor_profile_specialties
end
