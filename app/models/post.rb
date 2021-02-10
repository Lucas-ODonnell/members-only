class Post < ApplicationRecord
  belongs_to :user
  validates :author, :title, :body, presence: true
end
