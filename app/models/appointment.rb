class Appointment < ActiveRecord::Base
  include PgSearch

  belongs_to :patient, inverse_of: :appointments
  belongs_to :treatment

  validates :patient, presence: true, associated: true
  validates :attend_at, presence: true

  has_enumeration_for :kind, with: AppointmentKind, create_scopes: true
  has_enumeration_for :status, with: AppointmentStatus, create_scopes: true, create_helpers: true

  pg_search_scope :full_text_search, against: [:kind, :status, :attend_at],
                  associated_against: {
                    patient: [:email, :name, :cellphone]
                  },
                  using: {
                    tsearch: {
                      any_word: true,
                      prefix: true,
                      normalization: 10,
                      dictionary: 'portuguese'
                    }
                  },
                  ignoring: :accents

  ##
  # Public: Just a scope method wrapper to verify if the method has an query param,
  #         run scoped pg_search but if not, there is run the `all` scope.
  #
  # Returns an ActiveRecord::Relation object.
  def self.search(query)
    query.present? ? full_text_search(query) : all
  end
end
