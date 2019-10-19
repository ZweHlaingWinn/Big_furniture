class CreateOwnOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :own_orders do |t|
      t.references :own_design_product, foreign_key: true
      t.string :status
      t.datetime :own_design_product_date

      t.timestamps
    end
  end
end
