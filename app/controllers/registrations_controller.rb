require 'mailtrap'
class RegistrationsController < Devise::RegistrationsController
    
  
    private
  
    def sign_up_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :contact_number, :address, :date_of_birth, :gender)
    end
  
    def account_update_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password, :contact_number, :address, :date_of_birth, :gender)
    end
  end
  