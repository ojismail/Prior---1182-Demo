class Devise::RegistrationsController < DeviseController
  before_action :authenticate_user!
  before_action :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:age, :gender, :medical_history, :drug_history, :allergy_history, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:age, :gender, :medical_history, :drug_history, :allergy_history, :role])
  end

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :age, :gender, :medical_history, :drug_history, :allergy_history, :role)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :age, :gender, :medical_history, :drug_history, :allergy_history, :role)
  end
end
