class Club < ApplicationRecord
	belongs_to :owner, class_name: "User", foreign_key: "owner_id"
#	has_many :rules, foreign_key: :owner_id, dependent: :destroy
	has_many :schedules, foreign_key: :owner_id, dependent: :destroy
end
