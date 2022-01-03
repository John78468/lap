class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  belongs_to :city, foreign_key :true
  has_many :privates_messages
  has_many :comments
  has_many :gossips
  has_many :tags
  has_many :likes
  
  validates :email, presence: true, uniqueness: true ,format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
  validates :password, presence:true, length: { in: 6..20 }

end
