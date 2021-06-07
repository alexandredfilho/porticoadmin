class User < ApplicationRecord
  has_many :shipments
  has_many :vehicles
  has_many :drivers
  has_many :customers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def username
    return self.email.split('@')[0].capitalize
  end
end
