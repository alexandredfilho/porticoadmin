class AddUserToShipments < ActiveRecord::Migration[6.0]
  def change
    add_reference :shipments, :user, null: false, foreign_key: true
  end
end
