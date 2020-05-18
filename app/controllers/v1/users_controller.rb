class V1::UsersController < ApplicationController
  # def show
  #   user = User.find(params[:id])
  #   render json: user
  # end
  def create
    @user = User.new(user_params)

    if @user.save
      render :create
    else
      head(:unprocessable_entity)
    end
    
   end
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
