class Celebrity < ApplicationRecord
  has_many :bookings
  has_many_attached :photos

  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :price_per_hour, presence: true
  validates :location, presence: true
end
