ActiveAdmin.register Grammar do
  permit_params :name, :content

  index do
    column :name
    column :content

    default_actions
  end
end