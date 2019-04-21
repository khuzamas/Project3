class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.datetime :exp_date
      t.integer :stock
      t.string :category
      t.string :image

      t.timestamps
    end
  end
end
