class FileGradework < ApplicationRecord
	has_one :gradework
	
	validates :name, presence: true
	validates :path, presence: true
	validates :description, presence: true
	validates :size, presence: true

	scope :by_name, -> (name) { where name: name}
	scope :by_path, ->(path) {where path: path}
	
end
