class Post < ApplicationRecord
  belongs_to :user
  Validates :question, presence: true
end
