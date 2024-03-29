class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :start_time
      t.date :end_time
      t.references :user, null: false, foreign_key: true
      t.references :bathroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
