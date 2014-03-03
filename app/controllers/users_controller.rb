class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @user_profile_button = 'Зарегистрироваться'
  end

  def create
    @user = User.new(user_params)
    @user.email = params[:user][:email].downcase
    if @user.save
      flash[:success] = 'Welcome!'
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
    @user_profile_button = 'Изменить данные'
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation )
  end
end
