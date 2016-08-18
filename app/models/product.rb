class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :posts
  has_many :bookings

  has_attachments :photos, maximum: 2

  validates :name, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :price_per_day, presence: true
end
