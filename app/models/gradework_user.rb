class GradeworkUser < ApplicationRecord
  belongs_to :users
  belongs_to :gradeworks
end
