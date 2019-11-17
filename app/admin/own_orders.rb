ActiveAdmin.register OwnOrder do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :own_design_product_id, :status, :own_design_product_date
  #
  # or
  #
  # permit_params do
  #   permitted = [:own_design_product_id, :status, :own_design_product_date]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :own_design_product_id, :status, :own_design_product_date

  config.batch_actions = false
  config.filters = false

  
  

 
end
