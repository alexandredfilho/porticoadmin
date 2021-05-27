class CreateShipments < ActiveRecord::Migration[6.0]
  def change
    create_table :shipments do |t|
      t.references :driver, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.integer :shipment_type
      t.string :invoice_number
      t.string :cargo_checker
      t.integer :warehouse
      t.string :dock
      t.date :date
      t.time :hour

      t.timestamps
    end
  end
end
