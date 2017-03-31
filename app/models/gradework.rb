class Gradework < ApplicationRecord
	has_one :student
	has_many :jury
	has_many :director
	has_many :file_gradework
	has_many :feedback
	
	validates :name, presence: true
	validates :status, presence: true
	validates :delivery_date, presence: true
	validates :begin_date, presence: true
	validates :hour, presence: true
	validates :locale, presence: true
	validates :semester, presence: true

	scope :by_name, -> (name) { where name: name}
	scope :delivery, -> {where(status: true)}
	scope :no_delivery, -> {where(status: false)}
	scope :by_delivery_date, -> (date) {where delivery_date: date}
	scope :by_semester, -> (semester){where semester: semester}


end
