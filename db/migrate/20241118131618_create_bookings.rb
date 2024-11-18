class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.integer :total_price
      t.string :activity
      t.references :user, null: false, foreign_key: true
      t.references :celebrity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
