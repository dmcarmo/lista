class Service < ApplicationRecord
  belongs_to :profilable, polymorphic: true

  has_many :reviews, dependent: :destroy
  has_many :service_locations, dependent: :destroy
  has_many :locations, through: :service_locations

  validates :name, presence: true
end
