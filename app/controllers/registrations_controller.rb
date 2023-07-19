class RegistrationsController < Devise::RegistrationsController

    private 

    def sign_up_params 
        params.require(:welcome).permit(:username, :email, :password, :password_confirmation, :role, :type)
    end
    def account_update_params
        params.require(:welcome).permit(:username, :email, :password, :password_confirmation, :current_password)
    end
end