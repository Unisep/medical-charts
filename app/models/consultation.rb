class Consultation < ActiveRecord::Base
  belongs_to :patient, inverse_of: :consultations
  belongs_to :treatment

  validates :patient, presence: true, associated: true
end
