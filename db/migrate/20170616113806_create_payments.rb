class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.references :order, foreign_key: true
      t.decimal :amount, precision: 9, scale: 2
      t.string :payment_method
      t.text :description

      t.timestamps
    end
  end
end
