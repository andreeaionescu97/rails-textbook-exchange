class Book < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :condition, presence: true
  validates :year, presence: true
  validates :publisher, presence: true
  validates :price, presence: true
  validates :photo, presence: true

  has_one_attached :photo
end
