class Student < ApplicationRecord
	has_one :gradework
	
	validates :firstname, :lastname,  :phone, presence: true	
	validates :email, :identification, presence: true, uniqueness: true	
	
end
