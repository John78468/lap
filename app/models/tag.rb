class Tag < ApplicationRecord
  has_many :gossips
  belongs_to :user, foreign_key :true
  belongs_to :gossip, foreign_key :true
end
