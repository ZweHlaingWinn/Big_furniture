class CreateOwnDesignProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :own_design_products do |t|
      t.string :name
      t.string :size
      t.string :color
      t.decimal :price
      t.text :description
      t.datetime :targetdate
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
