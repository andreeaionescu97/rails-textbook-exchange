class AddStateToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :state,  :string,  default: "Pending"
  end
end
