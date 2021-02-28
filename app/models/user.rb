class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :recoverable, :rememberable, and :omniauthable
  devise :database_authenticatable, :registerable, :validatable
  has_many :posts

  validates :password, length: { minimum: 6 }
end
