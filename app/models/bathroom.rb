class Bathroom < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :title, presence: true
  validates :address, presence: true
  validates :price, presence: true, numericality: { only_integer: true}
  has_one_attached :photo
end
