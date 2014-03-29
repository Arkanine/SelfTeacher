ActiveAdmin.register Product do
  permit_params :title, :description, :image, :price

  index do
    column :id 
    column :title
    column :description
    column :image
    column :price, :sortable => :price do |product|
      number_to_currency product.price
    end
    column :created_at
    column :updated_at
    column :order
    default_actions
  end
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
