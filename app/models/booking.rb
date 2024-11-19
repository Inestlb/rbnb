class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :celebrity
  # validates :total_price, presence: true
  validates :activity, presence: true
end
