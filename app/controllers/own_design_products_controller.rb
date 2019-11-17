class OwnDesignProductsController < InheritedResources::Base
  before_action :set_own_design_product, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!


  def index
    @own_design_products = []
    @own_design_products = current_user.own_design_products unless current_user.nil?
  end

  def show
    

  end

  def new
    @own_design_product = OwnDesignProduct.new
  end

  def create
    @own_design_product = OwnDesignProduct.new(own_design_product_params)

    respond_to do |format|
      if @own_design_product.save
        format.html { redirect_to @own_design_product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @own_design_product }
      else
        format.html { render :new }
        format.json { render json: @own_design_product.errors, status: :unprocessable_entity }
      end
    end
  end


  private

    def set_own_design_product
      @own_design_product = OwnDesignProduct.find(params[:id])
    end

    def own_design_product_params
      params.require(:own_design_product).permit(:name, :size, :color, :price, :description, :targetdate, :user_id, images: [])
    end

end
