class Director < ApplicationRecord
	has_many :gradework
	
	validates :firstname, :lastname,  :phone, presence: true	
	validates :email, :identification, presence: true, uniqueness: true	
	
end
