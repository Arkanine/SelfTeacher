class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  	@cart = current_cart
    @last_products = @products.order('created_at desc').reverse[0..5]
  end
end
