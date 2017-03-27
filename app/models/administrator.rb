class Administrator < ApplicationRecord

	validates :firstname, :lastname,  :phone, presence: true	
	validates :email, :identification, presence: true, uniqueness: true		

end
