class Evolution < ActiveRecord::Base
  belongs_to :appointment

  has_and_belongs_to_many :teeth
end
