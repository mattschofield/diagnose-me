class Doctor < ActiveRecord::Base

  has_many :patients

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :gender
  validates_presence_of :dob
  validates_presence_of :job_title

  before_save :cleanup

  def name
    "#{first_name} #{last_name}" 
  end

  private

  def cleanup
    self[:first_name] = self[:first_name].capitalize
    self[:last_name] = self[:last_name].capitalize
  end

end
