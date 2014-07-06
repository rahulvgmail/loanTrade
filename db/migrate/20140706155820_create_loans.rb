class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.decimal :amount, precision: 7, scale: 4
      t.float :ytm, precision:3, scale: 4
      t.int :age  #age in seconds
      t.int :timeToMaturity
      t.timestamps
    end
  end
end
