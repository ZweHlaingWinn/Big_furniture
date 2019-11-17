class AddTargetDateToOwnDesignProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :own_design_products, :targetdate, :date
  end
end
