class Post < ApplicationRecord
  validates :user_id, presence: true, uniqueness: true
  has_one_attached :thumbnail
  has_one_attached :video
  belongs_to :user
  has_many :likes
end
