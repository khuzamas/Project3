class CreateJoinTableFridgesItems < ActiveRecord::Migration[5.2]
  def change
    create_join_table :fridges, :items do |t|
      # t.index [:fridge_id, :item_id]
      # t.index [:item_id, :fridge_id]
    end
  end
end
