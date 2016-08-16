class Product < ApplicationRecord
  belongs_to :category
  has_many :posts
  # has_many :bookings
  has_one :user

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :price_per_day, presence: true
end
