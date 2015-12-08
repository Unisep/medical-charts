class AvatarUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :big do
    cloudinary_transformation effect: 'brightness:30', width: 250, height: 250, crop: :thumb, gravity: :face
  end

  version :thumb do
    process resize_to_fill: [50, 50]
  end

  version :thumbnail do
    process :resize_to_fit => [50, 50, :fit]
    process :convert => 'jpg'
    cloudinary_transformation :quality => 80
  end
end
