class RegistrationController < Devise::RegistrationController

	private

	def sign_up_params

		params.require(:user).permit(:firstname, :lastname, :username, :email, :password, :password_confirmation)

	end

	def account_update_params

		params.require(:user).permit(:firstname, :lastname, :username, :email, :password, :password_confirmation, :current_password)

	end

end