class CreateFridgesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :fridges_users ,:id=>false do |t|
      t.integer "fridge_id"
      t.integer "user_id"
    end
  end
end
