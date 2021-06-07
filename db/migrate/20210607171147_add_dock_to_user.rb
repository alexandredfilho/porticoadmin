class AddDockToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :dock, :boolean, default: false
  end
end
