class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :likes, dependent: :destroy
  validates :content, presence: true, unless: :image?

  mount_uploader :image, ImageUploader

  def iine(user)
    likes.create(user_id: user.id)
  end

  def uniine
    likes.find_by(user_id: user.id).destroy
  end

end
