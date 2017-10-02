class Country < ApplicationRecord
  mount_uploader :country_image, ImageUploader
end
