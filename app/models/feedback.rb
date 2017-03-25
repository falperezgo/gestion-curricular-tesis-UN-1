class Feedback < ApplicationRecord
  has_one :gradework
  has_one :director
  belongs_to :director
end
