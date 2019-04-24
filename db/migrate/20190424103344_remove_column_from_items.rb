class RemoveColumnFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :exp_date, :datetime
  end
end
