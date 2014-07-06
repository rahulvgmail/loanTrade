class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans2 do |t|
      t.decimal :amount, precision: 7, scale: 4
      t.float :ytm, precision:3, scale: 4
      t.integer :age  #age in seconds
      t.integer :timeToMaturity
      t.timestamps
    end
  end
end
