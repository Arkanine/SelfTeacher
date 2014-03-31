class AddEditionToProducts < ActiveRecord::Migration
  def change
    add_column :products, :edition, :string
  end
end
