class Treatment < ActiveRecord::Base
  belongs_to :basic_treatment
  belongs_to :patient

  validates :patient, presence: true, associated: true
  validates :basic_treatment, presence: true, associated: true

  def to_s
    basic_treatment.description
  end
end
