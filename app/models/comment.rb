class Comment < ApplicationRecord
	validates :body, presence: true, length: {minimum: 1}
	validates :user_id, presence: true
	validates :post_id, presence: true

	belongs_to :user
	belongs_to :post
end
