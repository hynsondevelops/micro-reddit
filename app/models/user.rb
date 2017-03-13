class User < ApplicationRecord
	validates :username, presence: true, length: {maximum: 31 }
	validates :email, presence: true, length: {maximum: 255}, uniqueness: {case_sensitive: false}
	validates :password, presence: true, length: {minimum: 8, maximum: 15}

	has_many :posts
	has_many :comments
end
