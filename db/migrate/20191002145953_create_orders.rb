class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.decimal :amount
      t.text :delivery_address

      t.timestamps
    end
  end
end
