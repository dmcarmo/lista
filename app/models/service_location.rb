class ServiceLocation < ApplicationRecord
  belongs_to :service
  belongs_to :location

  enum system_type: { public: 0, private: 1, cooperative: 2 }
end
