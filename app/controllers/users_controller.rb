class UsersController < ApplicationController

  # create a user - the form is directly on the login page 
  def create
    user = User.new(user_params)

    if user.save
      redirect_to 'root_path'
    else
      redirect to  'root_path'
    end
  end
 




  private
 
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end


end
