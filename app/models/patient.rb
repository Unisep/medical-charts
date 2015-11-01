class Patient < ActiveRecord::Base
  mount_base64_uploader :profile_image, AvatarUploader

  has_many :appointments, inverse_of: :patient, dependent: :delete_all
  has_many :basic_treatments, through: :treatments
  has_many :historical_answers, class_name: 'Rapidfire::AnswerGroup', dependent: :delete_all, foreign_key: :user_id
  has_many :treatments, dependent: :delete_all

  accepts_nested_attributes_for :appointments, reject_if: :all_blank, allow_destroy: true

  # TODO: Move to Form Objects

  validates :profile_image, presence: true
  validates :name, presence: true, if: :step1?
  # validates :cellphone, presence: true, if: :step1?
  # validates :zip_code, presence: true, if: :step1?
  # validates :address, presence: true, if: :step1?
  #
  # validates :birthday, presence: true, if: :step2?
  # validates :sex, presence: true, if: :step2?
  # validates :primary_document, presence: true, if: :step2?

  has_enumeration_for :marital_status, with: PatientMaritalStatus
  has_enumeration_for :sex, with: PatientSex
  has_enumeration_for :ethnicity, with: PatientEthnicity

  def step1?
    step == 1
  end

  def step2?
    step == 2
  end

  def age
    return if birthday.nil?

    now = Time.now.utc.to_date
    now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
  end
end
