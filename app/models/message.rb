class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :likes, dependent: :destroy
  validates :content, presence: true, unless: :image?

  mount_uploader :image, ImageUploader
end
