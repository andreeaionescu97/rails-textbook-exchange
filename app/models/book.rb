class Book < ApplicationRecord
 
  include PgSearch::Model
  pg_search_scope :search_by_title_and_author,
    against: [ :title, :author ],
    using: {
      tsearch: { prefix: true } 
    }

  
  belongs_to :user
  has_many :bookings
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :condition, presence: true
  validates :year, presence: true
  validates :publisher, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :photo, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_one_attached :photo

end
