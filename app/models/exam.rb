class Exam < ActiveRecord::Base
  belongs_to :treatment

  mount_uploader :file, ExamFileUploader
end
