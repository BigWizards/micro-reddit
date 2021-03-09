class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: {minimum:3, maximum:30}
  validates :link, presence: true
  
  belongs_to :user
end
