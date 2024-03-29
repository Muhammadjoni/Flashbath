class Bathroom < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :title, presence: true
  validates :address, presence: true
  validates :price, presence: true, numericality: { only_integer: true}
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search,
    against: [ :title, :content ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
