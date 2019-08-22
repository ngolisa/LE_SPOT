class Spot < ApplicationRecord
  belongs_to :user
  validates :city, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_city_and_date,
    against: [:city],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
