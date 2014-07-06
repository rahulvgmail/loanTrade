class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :goodTill
      t.boolean :isLimit
      t.decimal :ytm, precision: 3, scale: 3

      t.timestamps
    end
  end
end
