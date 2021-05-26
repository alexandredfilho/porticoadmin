class AddTypeToVehicle < ActiveRecord::Migration[6.0]
  def change
    add_column :vehicles, :type, :integer
  end
end
