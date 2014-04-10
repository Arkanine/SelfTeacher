ActiveAdmin.register Grammar do
  permit_params :name, :content

  index do
    column :name
    column :content
    column :basis

    default_actions
  end
end