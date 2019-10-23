class CreatePurchaseDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_details do |t|
      t.references :category, foreign_key: true
      t.references :purchase, foreign_key: true
      t.references :raw, foreign_key: true
      t.integer :qty
      t.decimal :amount

      t.timestamps
    end
  end
end
