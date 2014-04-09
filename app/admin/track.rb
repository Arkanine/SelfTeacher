ActiveAdmin.register Track do
  permit_params :name, :sound

  index do
    column :name
    column :sound

    default_actions
  end
end