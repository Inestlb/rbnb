class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :celebrity
  # validates :total_price, presence: true
  validates :activity, presence: true

  enum status: {
    pending: 0,
    accepted: 1,
    refused: 2
  }

  # STATUSES = ["en cours", "acceptée", "annulée"]

  # validates :status, inclusion: { in: STATUSES }
end
#
# Booking.last.pending!
