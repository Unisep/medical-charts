class Appointment < ActiveRecord::Base
  include Searchable

  belongs_to :patient, inverse_of: :appointments
  belongs_to :treatment

  validates :patient, presence: true, associated: true

  has_enumeration_for :status, with: AppointmentKind, create_scopes: true
  has_enumeration_for :kind, with: AppointmentStatus, create_scopes: true

  scope :search, -> (query) { joins(:patient).where('patients.name = ?', query) }
end
