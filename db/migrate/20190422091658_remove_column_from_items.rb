class RemoveColumnFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :option_id, :integer
  end
end
