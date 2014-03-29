class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  rescue ActiveRecord::RecordNotFound
  end
  helper_method :current_user

  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id 
    cart
  end

  def authorize
    redirect_to login_url, alert: 'Not authorized' if current_user.nil?
  end

  def allow_test
    if current_user
      link_to 'Пройти тест', Test.find_by_name('Тест на знання ангійської  мови'), class:'list-group-item'
    else
      link_to 'Пройти тест', login_path, class:'list-group-item'
    end
  end

  def allow_study
    if current_user
    else

    end
  end
end
