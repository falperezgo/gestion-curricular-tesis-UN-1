class FileGradework < ApplicationRecord

  belongs_to :gradework

  validates :name, :description, :path, presence: true

  scope :order_by_name,-> (ord) {order("filegradeworks.name #{ord}")}
  scope :order_by_path, -> (ord) {order("filegradeworks.path #{ord}")}
  scope :order_by_id, -> (ord) {order("filegradeworks.id #{ord}")}

  def self.files_by_name(name)
    find_by_name(name)
  end

  def self.files_by_id(id)
    find_by_id(id)
  end
  
  def self.load_fileGradework()
    includes(:gradework)
  end
    
  def self.fileGradework_by_gradework(gradework)
    includes(:gradework)
      .find_by_gradework_id(gradework)
  end
  
  # def self.fileGradework_by_gradework_name(name)
    # includes(:gradework)
	  # .where(gradework: {name: name})      
  # end
    
  
  
 def self.files_student_name(identification)
     includes(gradework: [:users])
	 .where(users: {identification: identification})
   end

end
