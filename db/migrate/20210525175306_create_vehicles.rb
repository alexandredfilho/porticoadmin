class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :manufacturer
      t.string :model
      t.string :license_plate

      t.timestamps
    end
  end
end
