class Patient < ActiveRecord::Base

  belongs_to :doctor

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :gender
  validates_presence_of :dob

  before_save :cleanup

  scope :male_patients, where(:gender => "male")
  scope :female_patients, where(:gender => "female")

  def name
    "#{first_name} #{last_name}"
  end

  private

  def cleanup
    self[:first_name] = self[:first_name].capitalize
    self[:last_name]  = self[:last_name].capitalize
    self[:gender]     = self[:gender].downcase
  end

end
