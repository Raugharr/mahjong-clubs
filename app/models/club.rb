class Club < ApplicationRecord
	has_many :rules, foreign_key: :owner_id, dependent: :destroy
	has_many :schedules, foreign_key: :owner_id, dependent: :destroy
end
