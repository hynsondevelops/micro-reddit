class Post < ApplicationRecord
	validates :title, presence: true, length: {maximum: 31}
	validates :body, presence: true, length: {minimum: 1}
	validates :user_id, presence: true
	belongs_to :user
	has_many :comments
end
