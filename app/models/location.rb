class Location < ApplicationRecord
  has_many :service_locations, dependent: :destroy
  has_many :services, through: :service_locations
end
