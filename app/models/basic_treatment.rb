class BasicTreatment < ActiveRecord::Base
  has_many :treatments

  validates :description, presence: true
end
