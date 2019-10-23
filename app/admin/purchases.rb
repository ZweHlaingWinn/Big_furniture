ActiveAdmin.register Purchase do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :suppiler_id, :purchaseproduct, :qty, :amount
  #
  # or
  #
  # permit_params do
  #   permitted = [:suppiler_id, :purchaseproduct, :qty, :amount]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :suppiler_id, :purchaseproduct, :qty, :amount

  
end
