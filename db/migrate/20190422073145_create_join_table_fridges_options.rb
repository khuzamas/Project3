class CreateJoinTableFridgesOptions < ActiveRecord::Migration[5.2]
  def change
    create_join_table :fridges, :options do |t|
      # t.index [:fridge_id, :option_id]
      # t.index [:option_id, :fridge_id]
    end
  end
end
