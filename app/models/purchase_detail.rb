class PurchaseDetail < ApplicationRecord
  belongs_to :category
  belongs_to :purchase
  belongs_to :raw
end
