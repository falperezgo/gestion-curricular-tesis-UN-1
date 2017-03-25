class Feedback < ApplicationRecord
  has_one :gradework
  belongs_to :director
end
