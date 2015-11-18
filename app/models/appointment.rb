class Appointment < ActiveRecord::Base
  include Searchable

  belongs_to :patient, inverse_of: :appointments
  belongs_to :treatment

  validates :patient, presence: true, associated: true
  validates :attend_at, presence: true

  has_enumeration_for :kind, with: AppointmentKind, create_scopes: true
  has_enumeration_for :status, with: AppointmentStatus, create_scopes: true, create_helpers: true

  searchable_by 'patients.name', joins: :patient
end
