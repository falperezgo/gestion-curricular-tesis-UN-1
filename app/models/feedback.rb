class Feedback < ApplicationRecord
	has_one :gradework
	has_one :director

	validates :score, presence: true

	scope :pass, -> { where('score >= 3') }
	scope :lost, -> { where('score < 3')}
	scope :by_director, ->(director_id) { where director_id: director_id }
	scope :by_gradework, ->(gradework_id) { where gradework_id: gradework_id }
  scope :by_score, ->(score) { where score: score}







end
