class Vehicle < ApplicationRecord
  enum type: {
    Truck: 0,
    Van: 1,
    Car: 2,
    Motorcycle: 3
  }, _suffix: true
end
