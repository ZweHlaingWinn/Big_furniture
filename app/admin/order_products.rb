ActiveAdmin.register OrderProduct do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :price, :order_id, :product_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:price, :order_id, :product_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  # show do
  #   attributes_table do
  #     row :user do |obj|
  #       obj.order.user
  #     end
  #     
  #     row :amount
  #   end
  # end
end

