class Gradework < ApplicationRecord
	has_one :student
	has_many :jury
	has_many :director
	has_many :file_gradework
	has_many :feedback
end
