class Appointment < ActiveRecord::Base
  belongs_to :patient, inverse_of: :consultations
  belongs_to :treatment

  validates :patient, presence: true, associated: true

  has_enumeration_for :status
  has_enumeration_for :kind
end
