class RegistrationsController < Devise::RegistrationsController

    private 

    def sign_up_params 
        params.require(:home).permit(:full_name, :contact_number, :email, :password, :password_confirmation, :role, :type)
    end
    def account_update_params
        params.require(:home).permit(:full_name, :contact_number, :email, :password, :password_confirmation, :current_password)
    end
end