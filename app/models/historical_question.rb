class HistoricalQuestion < ActiveRecord::Base
  belongs_to :basic_question
  belongs_to :patient
end
