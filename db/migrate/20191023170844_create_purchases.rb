class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.references :suppiler, foreign_key: true
      t.string :purchaseproduct
      t.integer :qty
      t.decimal :amount

      t.timestamps
    end
  end
end
