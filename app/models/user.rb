class User < ApplicationRecord

  has_and_belongs_to_many :gradeworks
  has_and_belongs_to_many :roles

  validates :firstname, :lastname, :phone, presence: true
  validates :email, :identification, presence: true, uniqueness: true

  default_scope {order("users.firstname ASC")}
  
  scope :order_by_firstname,-> (ord) {order("users.firstname #{ord}")}
  scope :order_by_lastname, -> (ord) {order("users.lastname #{ord}")}
  scope :order_by_email, -> (ord) {order("users.email #{ord}")}
  scope :order_by_identification, -> (ord) {order("users.identification #{ord}")}


  def self.users_by_id(id)
    find_by_id(id)
  end

 def self.users_by_email(email)
 	find_by_email(email)
  end

  def self.users_by_identification(identification)
  	find_by_identification(identification)
  end

  def self.users_jury()
    joins(:roles).where({ roles: { name: "Jury" } })
  end

  def self.users_student()
    joins(:roles).where({ roles: { name: "Student" } })
  end

  def self.users_director()
    joins(:roles).where({ roles: { name: "Teacher" } })
  end

  def self.users_administrator()
    joins(:roles).where({ roles: { name: "Administator" } })
  end


end
