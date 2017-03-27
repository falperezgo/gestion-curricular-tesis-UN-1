class FileGradework < ApplicationRecord
	has_one :gradework
	
	validates :name, presence: true
	validates :path, presence: true
	validates :description, presence: true
	validates :size, presence: true
	
end
