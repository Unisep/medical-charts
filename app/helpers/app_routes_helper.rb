module AppRoutesHelper
  def exists?(path)
    begin
      Rails.application.routes.recognize_path path
    rescue
      return false
    end

    true
  end

  def normalized_current_path
    "#{request.env['PATH_INFO']}"
  end
end
