class Order < ApplicationRecord
    has_many :order_products,dependent: :destroy
    has_many :products
    belongs_to :user

    scope :in_progress, ->{where("orders.checked_out_at IS NULL")}
    scope :complete, -> {where("orders.checked_out_at IS NOT NULL")}
  
    COMPLETE = "complete"
    IN_PROGRESS = "in_progress"

    
  
   
    def checkout!
      if order_products.present?
      self.order_date = Time.now
      self.save
      else 
        self.save!
      end
    end

    # def recalculate_price!
    #   self.total_price = order_products.inject(0.0){|sum, line_item| sum += line_item.price }
    #   save!
    # end
  
    def recalculate_price!
      self.amount = order_products.inject(0.0){|sum, order_product| sum += order_product.price}
      save!
    end

    def state
      order_date.nil? ? IN_PROGRESS : COMPLETE
    end
  
    
end
