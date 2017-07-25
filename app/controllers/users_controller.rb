class UsersController < ApplicationController
  # GET to /users/:id
  def show
    @user = User.find( params[:id] )
  end
  
  def user_params
    params.require(:profile).permit(:avatar)
  end
end