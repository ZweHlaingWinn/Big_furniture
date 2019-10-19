class OwnDesignProductsController < InheritedResources::Base

  private

    def own_design_product_params
      params.require(:own_design_product).permit(:name, :size, :color, :price, :description, :targetdate, :user_id)
    end

end
