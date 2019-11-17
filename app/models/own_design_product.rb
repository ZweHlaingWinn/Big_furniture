class OwnDesignProduct < ApplicationRecord
  belongs_to :user
  has_many :own_orders,  dependent: :destroy
  has_many_attached :images
end
