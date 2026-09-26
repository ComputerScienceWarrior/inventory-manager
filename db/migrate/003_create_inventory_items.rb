class CreateInventoryItems < ActiveRecord::Migration[7.1]
  def change
    create_table :inventory_items do |t|
      t.references :inventory, null: false, foreign_key: true

      t.string :name, null: false
      t.string :item_type
      t.text :description
      t.integer :quantity, default: 1
      t.string :status
      t.date :purchase_date
      t.boolean :restock, default: false
      t.decimal :purchase_price, precision: 10, scale: 2
      t.text :notes

      t.timestamps
    end
  end
end