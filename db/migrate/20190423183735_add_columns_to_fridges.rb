class AddColumnsToFridges < ActiveRecord::Migration[5.2]
  def change
    add_column :fridges, :temp, :integer
    add_column :fridges, :room, :string
  end
end
