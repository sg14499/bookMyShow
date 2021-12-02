class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!
	include ApplicationHelper

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  		devise_parameter_sanitizer.permit(:sign_in) do |user_params|
    		user_params.permit(:email, :password)
  		end
	end
end
