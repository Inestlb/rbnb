class AddDatesToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :date_start, :datetime
    add_column :bookings, :date_end, :datetime
  end
end
