class LmsInstance < ActiveRecord::Base
  belongs_to  :lms_type, inverse_of: :lms_instances
  has_many :course_offerings, inverse_of: :lms_instance
  #~ Validation ...............................................................

  validates_presence_of :url
end
