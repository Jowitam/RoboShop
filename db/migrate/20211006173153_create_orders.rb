class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.text :comment
      t.belongs_to :shipping_type, null: false, foreign_key: true
      t.decimal :shipping_cost

      t.timestamps
    end
  end
end
