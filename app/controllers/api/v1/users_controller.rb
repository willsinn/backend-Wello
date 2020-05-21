class API::V1::UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    render json: user
  end
  def create
    user = User.create(user_params)
    render json: user
  end
  private
    def user_params
      params.permit(:name)
    end
end
