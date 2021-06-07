class AddGateToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :gate, :boolean, default: false
  end
end
