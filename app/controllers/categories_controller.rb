class CategoriesController < ApplicationController
  def show
  	@category = Category.find(params[:id])
  	@products = Product.where(category_id: params[:id]).paginate(:page => params[:page], :per_page => 3)
    @cart = current_cart
  end
end

