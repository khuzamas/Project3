class AddColumnToFridges < ActiveRecord::Migration[5.2]
  def change
    add_column :fridges, :user_id, :integer
  end
end
