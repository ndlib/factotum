class DirectorySubject < ActiveRecord::Base
  
  has_many :selector_subjects, :class_name => DirectorySelectorSubject, :foreign_key => "subject_id"
  has_many :subject_librarians, through: :selector_subjects, source: :employee

  validates :name, presence: true 
  validates_uniqueness_of :name

  default_scope { self.order(:name) }

  def self.sorted
    order(:name)
  end

end
