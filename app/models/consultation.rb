class Consultation < ActiveRecord::Base
  belongs_to :patient
  belongs_to :treatment

  validates :patient, presence: true, associated: true
end
