class AvatarUploader < Jarvis::AvatarUploader
  self.crop_size = [140, 140]

  version :cropped  do
    process :resize_to_crop
  end

  version :small, from_version: :cropped do
    process resize_to_fill: [38, 38]
  end

  version :medium, from_version: :cropped do
    process resize_to_fill: [60, 60]
  end

  version :large, from_version: :cropped do
    process resize_to_fill: [140, 140]
  end

  def default_url
    file_name = "users/fallback/avatar_#{version_name}.png"
    ActionController::Base.helpers.asset_url(file_name)
  end

end
