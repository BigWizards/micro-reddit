class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: {minimum:3, maximum:16}
  
  has_many :posts
  has_many :comments
end
