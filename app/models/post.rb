class Post < ApplicationRecord
  has_one_attached :thumbnail
  has_one_attached :video
end
