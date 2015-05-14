class Treatment < ActiveRecord::Base
  belongs_to :basic_treatment
  belongs_to :patient
end
