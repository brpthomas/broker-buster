class User < ApplicationRecord
	has_secure_password
	has_many :corps, :dependent => :destory
	validates :password, presence: true, confirmation: true
	validates :password_confirmation, presence: true
	validates :email, presence: true, uniqueness: true, format: {
		with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
	}
end
