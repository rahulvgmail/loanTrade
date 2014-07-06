class CreateMarketOrders < ActiveRecord::Migration
  def change
    create_table :market_orders do |t|

      t.timestamps
    end
  end
end
