class Comment < ApplicationRecord
  validates :body, presence: true, length: {minimum: 3, maximum:300}
  
  belongs_to :user, class_name: "user", foreign_key: "user_id"
  belongs_to :post, class_name: "post", foreign_key: "post_id"
end
