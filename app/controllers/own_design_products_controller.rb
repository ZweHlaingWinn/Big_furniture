class OwnDesignProductsController < InheritedResources::Base
  before_action :authenticate_user!


  def index
    @own_design_products = []
    @own_design_products = current_user.own_design_products unless current_user.nil?
  end



  private

    def own_design_product_params
      params.require(:own_design_product).permit(:name, :size, :color, :price, :description, :targetdate, :user_id, :own_design_product_images)
    end

end
