ActiveAdmin.register OwnDesignProduct do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :size, :color, :price, :description, :targetdate, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :size, :color, :price, :description, :targetdate, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  config.batch_actions = false
  config.filters = false


  index do 
    column :id
    column :name
    column :size
    column :price
    column :targetdate

    column :status do |user|
      if user.own_orders.present?
      user.own_orders.map{|it| it.status }
      else
        text_node "Need Admin Status".html_safe
      end
    end

  end

end


