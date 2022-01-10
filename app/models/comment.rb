class Comment < ApplicationRecord
  belongs_to :gossip, polymorphic: true
  belongs_to :user, foreign_key: true
  validates :content, presence: true

end
