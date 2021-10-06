class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.belongs_to :product, null: false, foreign_key: true
      t.decimal :unit_price
      t.integer :quantity
      t.belongs_to :order, null: false, foreign_key: true
      t.string :item_name

      t.timestamps
    end
  end
end
