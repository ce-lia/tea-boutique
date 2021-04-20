class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.references :order, null: false, foreign_key: true
      t.string :title
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
