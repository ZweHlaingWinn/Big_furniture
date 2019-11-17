ActiveAdmin.register PurchaseDetail do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :category_id, :purchase_id, :raw_id, :qty, :amount
  #
  # or
  #
  # permit_params do
  #   permitted = [:category_id, :purchase_id, :raw_id, :qty, :amount]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
    permit_params :category_id, :purchase_id, :raw_id, :qty, :amount, :sale_price

    config.batch_actions = false
    menu false

end
