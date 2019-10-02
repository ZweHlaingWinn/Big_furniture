ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :price, :color, :size, :category_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :color, :size, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :name, :price, :color, :size, :images , :category_id, :image

  config.batch_actions = false
  config.filters = false
   index do
       selectable_column
       column :id
       column :name do |names|
           link_to names.name, admin_product_path(names)
       end
 
       column "Product Image" do |image|
         image_tag image.image, class: "admin-product-logo"
     end
       column :price do |prices|
           prices.price
       end
       column :color do |colors|
         span style: "color colors.color", class: "far fa-circle"
       end
       column :category
       actions      
   end
   # remove_filter :skip_sidebar!, :only => :index
 
 
   form do |f|
     f.inputs "Product" do
         f.inputs :category
         f.inputs :name
         f.inputs :price
         f.inputs :size
         f.inputs :color
         # f.input :images, as: :file, input_html: {multiple: true}
         f.input :image, as: :file
     end
 f.actions
 end
end
