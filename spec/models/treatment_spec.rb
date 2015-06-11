require 'rails_helper'

RSpec.describe Treatment, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:basic_treatment) }
    it { is_expected.to belong_to(:patient) }
  end

  context 'model validations' do
    it { is_expected.to validate_presence_of(:basic_treatment) }
    it { is_expected.to validate_presence_of(:patient) }
  end

  context 'table fields' do
    it { is_expected.to have_db_column(:basic_treatment_id).of_type(:integer) }
    it { is_expected.to have_db_column(:patient_id).of_type(:integer) }
  end

  context 'table indexes' do
    it { is_expected.to have_db_index(:basic_treatment_id) }
    it { is_expected.to have_db_index(:patient_id) }
  end
end

