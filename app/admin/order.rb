ActiveAdmin.register Order do
	index do
		column :name
     	column :address
	    column :email
	    column :pay_type
	    column :created_at
	    column :updated_at
	    default_actions
	end
end
