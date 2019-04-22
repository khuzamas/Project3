class AddColumnToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :option_id, :integer
  end
end
