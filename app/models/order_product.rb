class OrderProduct < ApplicationRecord
    belongs_to :order, dependent: :destroy
    belongs_to :product

    def to_s
        self.product.name
    end

end
