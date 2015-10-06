module AppRoutesHelper
  def exists?(path)
    begin
      Rails.application.routes.recognize_path path
    rescue
      return false
    end

    true
  end
end
