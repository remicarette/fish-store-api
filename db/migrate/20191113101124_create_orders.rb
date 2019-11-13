class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :bill, foreign_key: true
      t.references :fish, foreign_key: true
      t.integer :total

      t.timestamps
    end
  end
end
