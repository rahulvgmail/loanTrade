class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :name

      t.timestamps
    end

    create_table :loans do |t|
      t.integer :amount
      t.string :int_rating
      t.decimal :interest, precision: 3, scale: 3
      t.float :defaults_count
      t.decimal :ytm, precision: 3, scale: 3
      t.timestamps
    end

    create_table :portfolios_loans, id: false do |t|
      t.belongs_to :portfolio
      t.belongs_to :loan
    end

  end
end
