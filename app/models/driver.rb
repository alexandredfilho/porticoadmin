class Driver < ApplicationRecord
  has_many :shipments
  has_many :vehicles, through: :shipments
  belongs_to :user
end
