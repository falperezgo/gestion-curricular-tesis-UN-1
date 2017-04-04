class Role < ApplicationRecord

  has_and_belongs_to_many :users


  def self.load_data
    includes(users: [:gradework, :role])
  end

  validates :name, :description, presence: true
end
