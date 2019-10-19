class OwnOrdersController < InheritedResources::Base

  private

    def own_order_params
      params.require(:own_order).permit(:own_design_product_id, :status, :own_design_product_date)
    end

end
