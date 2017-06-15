class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.references :product_category, foreign_key: true
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
