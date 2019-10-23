class AddSalePriceToPurchaseDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :purchase_details, :sale_price, :decimal
  end
end
