class SuppilersController < InheritedResources::Base

  private

    def suppiler_params
      params.require(:suppiler).permit(:suppiler_name, :phone, :email, :address)
    end

end
