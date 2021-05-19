class AddUsersFriendsRefsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :user, null: false, foreign_key: true
    add_reference :bookings, :friend, null: false, foreign_key: true
  end
end
