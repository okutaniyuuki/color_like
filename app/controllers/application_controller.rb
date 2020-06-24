class ApplicationController < ActionController::Base
before_action :authenticate_user!, except: [:top, :about]
	before_action :configure_permitted_parameters, if: :devise_controller?
	#デバイス機能実行前にconfigure_permitted_parametersの実行をする。
	protect_from_forgery with: :exception

  protected
  def after_sign_in_path_for(resource)

     user_path(resource)
  end

  def after_sign_up_path_for(resource)
     new_user_path(resource)

  end

  def after_sign_out_path_for(resource)
   root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email,])
 end
end
