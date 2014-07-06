class CreateLimitOrders < ActiveRecord::Migration
  def change
    create_table :limit_orders do |t|

      t.timestamps
    end
  end
end
