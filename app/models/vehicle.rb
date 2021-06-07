class Vehicle < ApplicationRecord
  has_many :shipments
  has_many :drivers, through: :shipments
  belongs_to :user

  enum vehicle_type: {
    Truck: 0,
    Van: 1,
    Car: 2,
    Motorcycle: 3
  }, _suffix: true
end
