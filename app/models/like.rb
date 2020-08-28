class Like < ApplicationRecord
  belongs_to :user
  belongs_to :message
  # validates_uniqueness_of :message_id, scope: :user_id
  validates :user_id, presence: true
  validates :message_id, presence: true  
end
