class User < ActiveRecord::Base

	has_secure_password

	has_many :achievements
	has_many :badges, through: :achievements
	has_many :courseRegisters
	has_many :courses, through: :courseRegisters
	has_many :lessonRegisters
	has_many :lessons, through: :lessonRegisters

	validates :username, presence: true, uniqueness: true, length: { in: 3..12 }
	validates :email, presence: true, uniqueness: true, length: { minimum: 0 }
	validates :password_digest,	presence: true, length: { minimum: 4 }

end
