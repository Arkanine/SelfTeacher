class CartsController < ApplicationController
  def show
    begin
      @cart = Cart.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error "Попытка доступа к несуществующей корзине #{params[:id]}"
      redirect_to store_url, notice: 'Несуществующая корзина'
    else
      render @cart
    end
  end

  def destroy
    @cart = current_cart
    @cart.destroy
    session[:cart_id] = nil
    redirect_to store_url
  end
end
