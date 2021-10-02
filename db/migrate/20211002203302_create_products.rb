class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :long_description
      t.string :photo
      t.decimal :price
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
