class Evolution < ActiveRecord::Base
  belongs_to :appointment

  has_and_belongs_to_many :teeth

  accepts_nested_attributes_for :teeth, reject_if: :blank
end
