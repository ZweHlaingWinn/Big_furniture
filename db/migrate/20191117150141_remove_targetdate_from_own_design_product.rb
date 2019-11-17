class RemoveTargetdateFromOwnDesignProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :own_design_products, :targetdate, :datetime
  end
end
