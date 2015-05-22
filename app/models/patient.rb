class Patient < ActiveRecord::Base
  has_many :treatments, dependent: :delete_all
  has_many :basic_treatments, through: :treatments

  validates :name, presence: true
  validates :cellphone, presence: true
  validates :zip_code, presence: true
  validates :address, presence: true
end
