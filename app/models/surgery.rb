class Surgery < ApplicationRecord
  has_many :doctor_profile_surgeries
  has_many :doctor_profiles, through: :doctor_profile_surgeries
end
