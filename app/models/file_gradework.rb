class FileGradework < ApplicationRecord

  belongs_to :gradework

  validates :name, :description, :path, presence: true

  scope :order_by_name,-> (ord) {order("filegradeworks.name #{ord}")}
  scope :order_by_path, -> (ord) {order("filegradeworks.path #{ord}")}
  scope :order_by_id, -> (ord) {order("filegradeworks.id #{ord}")}

  def self.files_by_name(name)
    find_by_name(name)
  end

 def self.files_student_name(identification)
    includes(gradework: [:users]).where(users: {identification: identification})
  end

end
