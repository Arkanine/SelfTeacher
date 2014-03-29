ActiveAdmin.register Track do
  permit_params :name, :sound

  index do
    column :name
    column :sound
  end
end