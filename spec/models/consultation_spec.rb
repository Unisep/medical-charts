require 'rails_helper'

RSpec.describe Consultation, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:patient) }
    it { is_expected.to belong_to(:treatment) }
  end

  context 'model validations' do
  end

  context 'table fields' do
    it { is_expected.to have_db_column(:patient_id).of_type(:integer) }
    it { is_expected.to have_db_column(:attend_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:status).of_type(:integer) }
    it { is_expected.to have_db_column(:treatment_id).of_type(:integer) }
    it { is_expected.to have_db_column(:kind).of_type(:integer) }
  end

  context 'table indexes' do
    it { is_expected.to have_db_index(:patient_id) }
    it { is_expected.to have_db_index(:treatment_id) }
  end
end

