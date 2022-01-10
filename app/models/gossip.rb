class Gossip < ApplicationRecord
  belongs_to :user
  has_many :tags
  has_many :comments
  has_many :like
  validates :content, presence: true
  validates :title, presence: true
end
