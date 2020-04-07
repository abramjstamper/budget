class RolesController < ApplicationController

  def index
    @roles = Role.all
    render json: @roles
  end

  def show
    @role = Role.find([params[:id]])
    render @role
  end
  
  def create
    @role = Role.new(role_params)
    if @role.save
      render json: @role
    else
      render json: @role.errors
    end
  end

  def update
    if @role.update(role_params)
      render json: @role
    else
      render json: @role.errors 
    end
  end

  private
    def role_params
      params.permit(:name, :description)
    end
end
