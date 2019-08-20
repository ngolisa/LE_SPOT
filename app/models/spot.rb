class Spot < ApplicationRecord
  belongs_to :user
  validates :city, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price, presence: true
  mount_uploader :photo, PhotoUploader
end
