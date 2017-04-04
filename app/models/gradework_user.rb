class GradeworkUser < ApplicationRecord

  self.table_name="gradeworks_users"
  belongs_to :user
  belongs_to :gradework
end
