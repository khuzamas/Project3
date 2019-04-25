class AddColumnsToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :fridge_id, :integer
  end
end
