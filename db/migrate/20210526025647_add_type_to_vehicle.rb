class AddTypeToVehicle < ActiveRecord::Migration[6.0]
  def change
    add_column :vehicles, :vehicle_type, :integer
  end
end
