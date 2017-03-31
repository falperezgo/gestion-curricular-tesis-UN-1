class Administrator < ApplicationRecord

	validates :firstname, :lastname,  :phone, presence: true	
	validates :email, :identification, presence: true, uniqueness: true

	scope :by_name, -> (firstname) { where firstname: firstname}
  scope :by_lastname, -> (lastname) { where lastname: lastname}
  scope :by_email, -> (email) { where email: email}
  scope :by_phone, -> (phone) { where phone: phone}
  scope :by_identification, -> (identification) { where identification: identification}



end
