class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  respond_to :html, :json
  responders :flash

  def can_administer?
    false
  end

  def current_user
    @current_user ||= Patient.find_by(id: session[:current_patient_id])
  end

  helper_method :current_user
end
