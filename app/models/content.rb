class Content < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :title, :description, presence: true
end
