class Feedback < ApplicationRecord
	has_one :gradework
	has_one :director

	validates :score, presence: true
end
