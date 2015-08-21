class Achievement < ActiveRecord::Base
	belongs_to :user, :foreign_key => "user_id"
	belongs_to :badge, :foreign_key => "badge_id"
end
