class Shipment < ApplicationRecord
  belongs_to :driver
  belongs_to :vehicle
  belongs_to :customer

  enum shipment_type: {
    Delivery: 0,
    Collect: 1
  }, _suffix: true

  enum warehouse: {
    Healthcare: 0,
    HighTech: 1
  }, _suffix: true

end
