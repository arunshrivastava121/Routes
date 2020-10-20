class ImageUploader < ApplicationRecord
  has_one_attached :avatar_image
end
