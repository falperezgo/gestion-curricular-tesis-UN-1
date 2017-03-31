class FileGradework < ApplicationRecord
	has_one :gradework
	
	validates :name, :path, :description, :size, presence: true	

	scope :by_name, -> (name) { where name: name}
	scope :by_path, ->(path) {where path: path}
	
end
