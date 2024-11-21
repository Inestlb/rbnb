class Celebrity < ApplicationRecord
  has_many :bookings
  has_many_attached :photos

  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :price_per_hour, presence: true
  validates :location, presence: true

  include PgSearch::Model
  pg_search_scope :search_by,
    against: [:name, :price_per_hour, :location],
  using: {
    tsearch: { prefix: true }
  }
end
