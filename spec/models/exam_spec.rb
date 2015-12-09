require 'rails_helper'

RSpec.describe Exam, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:treatment) }
  end

  context 'model validations' do
  end

  context 'table fields' do
    it { is_expected.to have_db_column(:file).of_type(:string) }
    it { is_expected.to have_db_column(:treatment_id).of_type(:integer) }
  end

  context 'table indexes' do
    it { is_expected.to have_db_index(:treatment_id) }
  end
end

