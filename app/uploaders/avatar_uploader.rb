class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  # storage :dropbox
  storage :file

  def store_dir
    "uploads-#{Rails.env}/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :big do
    process resize_to_fill: [250, 250]
  end

  version :thumb do
    process resize_to_fill: [50, 50]
  end

  def extension_white_list
    %w(gif jpg jpeg png)
  end
end
