class Feedback < ApplicationRecord

  belongs_to: user
  belongs_to: gradework

  validates :score, presence: true

end
