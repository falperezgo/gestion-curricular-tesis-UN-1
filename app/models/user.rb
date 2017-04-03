class User < ApplicationRecord

  has_and_belongs_to_many :gradeworks
  has_and_belongs_to_many :roles

  validates :firstname, :lastname, :phone, presence: true
  validates :email, :identification, presence: true, uniqueness: true

end
