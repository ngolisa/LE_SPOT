class Spot < ApplicationRecord
  belongs_to :user
  validates :city, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
