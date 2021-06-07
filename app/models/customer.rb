class Customer < ApplicationRecord
  has_many :shipments
  belongs_to :user
end
