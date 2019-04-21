class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :tiltle
      t.text :description

      t.timestamps
    end
  end
end
