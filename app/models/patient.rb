class Patient < ActiveRecord::Base
  has_many :basic_treatments, through: :treatments
  has_many :treatments, dependent: :delete_all

  has_many :historical_questions, dependent: :delete_all
  has_many :basic_questions, through: :historical_questions

  validates :name, presence: true
  validates :cellphone, presence: true
  validates :zip_code, presence: true
  validates :address, presence: true
end
