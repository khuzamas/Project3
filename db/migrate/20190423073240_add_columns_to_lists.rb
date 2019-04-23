class AddColumnsToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :Completed, :boolean, default: false
  end
end
