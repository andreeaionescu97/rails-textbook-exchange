class Book < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :condition, presence: true
  validates :year, presence: true
  validates :publisher, presence: true



end
