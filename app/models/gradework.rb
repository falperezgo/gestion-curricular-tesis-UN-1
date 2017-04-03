class Gradework < ApplicationRecord

  has_and_belongs_to_many :users
  has_many :filegradework
  has_many :feedbacks

  validates :name, :status, :delivery_date, :begin_date, :hour, :locale, :semester, presence: true

end
