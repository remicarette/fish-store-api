class CreateFish < ActiveRecord::Migration[5.2]
  def change
    create_table :fish do |t|
      t.string :name
      t.integer :price
      t.integer :quantity
      t.boolean :available
      t.text :description

      t.timestamps
    end
  end
end
