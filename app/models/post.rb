class Post < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :question, presence: true
end
