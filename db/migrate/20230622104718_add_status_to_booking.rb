class AddStatusToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :status, :string, default: "en attente"
    change_column_null :bookings, :status, false
    add_check_constraint :bookings, "status IN ('accepté', 'en attente', 'refusé')"
  end
end
