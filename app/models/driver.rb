class Driver < ApplicationRecord
  has_many :shipments
  has_many :vehicles, through: :shipments
end
