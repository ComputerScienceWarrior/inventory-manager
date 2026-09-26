class CreateInventories < ActiveRecord::Migration[7.1]
  def change
    create_table :inventories do |t|
      t.references :user, null: false, foreign_key: true

      t.string :name, null: false
      t.string :inv_type
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end