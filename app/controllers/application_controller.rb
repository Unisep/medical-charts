class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  respond_to :html, :json

  def can_administer?
    true
  end

  def current_user
    @current_user = if current_page?(controller: 'patients', action: 'edit')
      Patient.find_by(id: params[:id])
                    else
                      Patient.new
                    end
  end
  helper_method :current_user
end
