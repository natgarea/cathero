class User < ActiveRecord::Base

	has_secure_password

	has_many :badges
	has_many :courseregisters
	has_many :lessonregisters


	validates :username, presence: true, uniqueness: true, length: { in: 3..12 }
	
	validates :email, presence: true, uniqueness: true, length: { minimum: 0 }
	
	validates :password_digest,	presence: true, length: { minimum: 4 }

end
