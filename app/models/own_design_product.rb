class OwnDesignProduct < ApplicationRecord
  belongs_to :user
  has_many_attached :own_design_product_images
end
