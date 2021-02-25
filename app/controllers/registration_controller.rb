class RegistrationController < ApplicationController

  private
  
  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
  end

  def sign_in_params
    params.require(:user).permit(:username, :password, :remember_me)
  end
end
