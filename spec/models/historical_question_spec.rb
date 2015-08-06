require 'rails_helper'

RSpec.describe HistoricalQuestion, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:patient) }
    it { is_expected.to belong_to(:basic_question) }
  end

  context 'model validations' do
  end

  context 'table fields' do
    it { is_expected.to have_db_column(:accepted).of_type(:boolean) }
    it { is_expected.to have_db_column(:patient_id).of_type(:integer) }
    it { is_expected.to have_db_column(:basic_question_id).of_type(:integer) }
  end

  context 'table indexes' do
    it { is_expected.to have_db_index(:patient_id) }
    it { is_expected.to have_db_index(:basic_question_id) }
  end
end

