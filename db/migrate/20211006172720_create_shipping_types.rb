class CreateShippingTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :shipping_types do |t|
      t.string :name
      t.decimal :cost

      t.timestamps
    end
  end
end
