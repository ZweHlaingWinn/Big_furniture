class Purchase < ApplicationRecord
  belongs_to :suppiler

  def to_s
    self.purchaseproduct
  end
end
