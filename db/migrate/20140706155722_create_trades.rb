class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :instrument_id
      t.integer :order_id
      t.integer :dummy


      t.timestamps
    end
  end
end
