class Country < ApplicationRecord
  mount_uploader :country_image, ImageUploader
  has_many :travel_journals
end
