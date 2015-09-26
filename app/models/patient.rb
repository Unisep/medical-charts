class Patient < ActiveRecord::Base
  include MultiStepModel

  has_many :basic_treatments, through: :treatments
  has_many :historical_answers, class_name: 'Rapidfire::AnswerGroup', dependent: :delete_all
  has_many :treatments, dependent: :delete_all
  has_many :consultations

  accepts_nested_attributes_for :consultations, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true, if: :step1?
  validates :cellphone, presence: true, if: :step1?
  validates :zip_code, presence: true, if: :step1?
  validates :address, presence: true, if: :step1?

  def self.total_steps
    3
  end
end
