class RemoveColumnFromFridges < ActiveRecord::Migration[5.2]
  def change
    remove_column :fridges, :user_id, :integer
  end
end
