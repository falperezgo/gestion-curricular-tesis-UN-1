class Gradework < ApplicationRecord
	has_one :student
	has_many :jury
	has_many :director
	has_one :file_gradework
	has_one :feedback
end
