class Gradework < ApplicationRecord

  has_and_belongs_to_many :users
  has_many :filegradeworks 
  has_many :feedbacks

  validates :name, :status, :delivery_date, :begin_date, :hour, :locale, :semester, presence: true

  default_scope {order("gradeworks.name")}
  scope :order_by_name, -> (ord) {order("gradeworks.name #{ord}")}
  scope :order_by_semester, -> (ord) {order("gradeworks.semester #{ord}")}
  scope :order_by_delivery_date, -> (ord) {order("gradeworks.delivery_date #{ord}")}
  scope :order_by_begin_date, -> (ord) {order("gradeworks.begin_date #{ord}")}
  scope :order_by_created_at, -> (ord) {order("gradeworks.created_at #{ord}")}

#def self.load_gradeworks(**args)
#  paginate(:page => args[:page] || 1,:per_page => args[:per_page] || 10)
#end

  def self.gradeworks_by_id(id)
    find_by_id(id)
  end

  def self.gradeworks_by_ids(ids,**args)
#  load_admins(args)
    self
        .where(gradeworks: {
            id: ids
        })
  end

  def self.gradeworks_by_not_ids(ids,**args)
#  load_admins(args)
    self
        .where.not(gradeworks: {
        id: ids
    })
  end

  def self.gradeworks_by_name(name)
    find_by_name(name)
  end

  def self.gradeworks_by_roles(role)
    includes(users: [:roles])
        .where(roles: {name: role})
  end

  def self.gradeworks_student()
    includes(users: [:roles])
	.where(roles: {name: "Administator"})
  end

  def self.gradeworks_administrator()
    includes(users: [:roles])
	.where(roles: {name: "Administator"})
  end

  def self.gradeworks_director()
    includes(users: [:roles])
	.where(roles: {name: "Teacher"})
  end

  def self.gradeworks_jury()
    includes(users: [:roles])
	.where(roles: {name: "Jury"})
  end

  #CarrierWave
  mount_uploader :file, FileUploader

  

end
