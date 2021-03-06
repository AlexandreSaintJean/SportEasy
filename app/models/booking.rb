class Booking < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :product, presence: true
  validates :user, presence: true
end
