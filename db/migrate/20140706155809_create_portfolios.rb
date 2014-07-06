class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.string :name
      t.integer :amount
      t.string :int_rating
      t.decimal :interest, precision: 3, scale: 3
      t.float :defaults_count
      t.decimal :ytm, precision: 3, scale: 3
      t.timestamps
    end


    create_table :portfolios do |t|
      t.references :child
      t.references :container
    end

    add_index :portfolios, :child_id
    add_index :portfolios, [:container_id, :child_id], :unique => true



  end
end
