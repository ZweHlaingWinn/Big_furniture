ActiveAdmin.register Order do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :order_date, :amount, :delivery_address, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:order_date, :amount, :delivery_address, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  config.batch_actions = false
  config.filters = false

  index do

    column :id
    column :customer_name do|user|
        user.user.name
    end

    column :Delivery_address do |user|
      user.user.address
    end

    column :product_name do |product|
      product.order_products.map{|it| it.product }
    end

    column :order_date
    column :amount
    actions
  end

  show do
    attributes_table do
      row :user
      row :customer_address do |obj|
          obj.user.address
      end
      row :order_date
      row :amount
      row :product_name do |obj|
        obj.order_products.map{|it| it.product.name }
      end
    end
  end
end
