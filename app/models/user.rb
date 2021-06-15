class User < ApplicationRecord
  has_many :customers
  has_many :drivers
  has_many :shipments
  has_many :vehicles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:admin, :cargo_checker, :security_officer, :security_manager]

  def username
    return self.email.split('@')[0].capitalize
  end
end
