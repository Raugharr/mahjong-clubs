class Rule < ApplicationRecord
	belongs_to :club, foreign_key: :owner_id
	validates :text, length: {minimum: 1, allow_nil: false, message: "To short"}
end
