class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :fullname
      t.text :line
      t.string :city
      t.string :phone

      t.timestamps
    end
  end
end
