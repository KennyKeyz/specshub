class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?



  #def after_sign_in_path_for(resource)
  #  contact_path
  #end
  

  rescue_from CanCan::AccessDenied do |exception|  
    redirect_to "/", :alert => exception.message
  end
 

 private
  	def configure_permitted_parameters
	    added_attrs = [:email, :password, :password_confirmation, :remember_me, :first_name, :middle_name, :last_name, :phone_number, :work_place]
	    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
	    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
	  end


end
