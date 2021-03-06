class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books
  has_many :bookings
  has_many :incoming_bookings, through: :books, source: :bookings
  has_many :wishes
  has_one_attached :avatar
  has_one_attached :photo
end
