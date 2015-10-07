class Patient < ActiveRecord::Base
  include MultiStepModel

  has_many :basic_treatments, through: :treatments
  has_many :historical_answers,
           class_name: 'Rapidfire::AnswerGroup', dependent: :delete_all, foreign_key: :user_id
  has_many :treatments, dependent: :delete_all
  has_many :appointments, inverse_of: :patient, dependent: :delete_all

  accepts_nested_attributes_for :appointments, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true, if: :step1?
  validates :cellphone, presence: true, if: :step1?
  validates :zip_code, presence: true, if: :step1?
  validates :address, presence: true, if: :step1?

  # validates :birthday, presence: true, if: :step2?
  # validates :address, presence: true, if: :step2?

  has_enumeration_for :marital_status, with: PatientMaritalStatus
  has_enumeration_for :sex, with: PatientSex
  has_enumeration_for :ethnicity, with: PatientEthnicity

  def self.total_steps
    3
  end
end
