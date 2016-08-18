class Post < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :question, presence: true
  validates :product, presence: true
  validates :user, presence: true
end
