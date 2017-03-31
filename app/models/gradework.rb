class Gradework < ApplicationRecord
	has_one :student
	has_many :jury
	has_many :director
	has_many :file_gradework
	has_many :feedback
	
	validates :name, :status, :delivery_date, :begin_date, :hour, :locale, :semester, presence: true
	#validates_inclusion_of :status, :in => [true, false]

	scope :by_name, -> (name) { where name: name}
	scope :delivery, -> {where(status: true)}
	scope :no_delivery, -> {where(status: false)}
	scope :by_delivery_date, -> (date) {where delivery_date: date}
	scope :by_semester, -> (semester){where semester: semester}


end
