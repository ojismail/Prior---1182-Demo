class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    if current_user.doctor?
      consultations_path
    else
      new_consultation_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:age, :gender, :medical_history, :drug_history, :allergy_history, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:age, :gender, :medical_history, :drug_history, :allergy_history, :role])
  end
end

def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
end
