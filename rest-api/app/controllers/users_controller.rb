class UsersController < ApplicationController
  
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find([params[:id]])
    render @user
  end
  
  def create
    params[:role_attributes] = params.delete(:role) if params.has_key? :role
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors 
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, role: [ :id, :name, :description ])
    end

end

