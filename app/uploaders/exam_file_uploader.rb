class ExamFileUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def extension_white_list
    %w(pdf doc docx)
  end
end
