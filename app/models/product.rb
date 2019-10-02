class Product < ApplicationRecord
    has_one_attached :image 
    # accepts_nested_attributes_for :images, :allow_destroy => true  
    belongs_to :category
    has_many :order_products

    def to_s
        self.color
    end
end
