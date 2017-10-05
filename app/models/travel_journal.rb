class TravelJournal < ApplicationRecord
  mount_uploader :journal_image, ImageUploader
  belongs_to :country
  belongs_to :user
  enum status: { unpublished: false, published: true }
  validates :title, presence: true
  validates :content, presence: true
  validates :country_id, presence: true
  validates :user_id, presence: true
end
