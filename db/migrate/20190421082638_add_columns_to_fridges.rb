class AddColumnsToFridges < ActiveRecord::Migration[5.2]
  def change
    add_column :fridges, :item_id, :integer
    add_column :fridges, :info_id, :integer
  end
end
