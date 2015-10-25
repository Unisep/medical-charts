class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  respond_to :html, :json

  def can_administer?
    false
  end

  def current_user
    @current_user ||= Patient.find_by(id: session[:current_patient_id])
  end

  helper_method :current_user
end
