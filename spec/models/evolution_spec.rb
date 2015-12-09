require 'rails_helper'

RSpec.describe Evolution, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:appointment) }
  end

  context 'model validations' do
  end

  context 'table fields' do
    it { is_expected.to have_db_column(:description).of_type(:text) }
    it { is_expected.to have_db_column(:attend_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:teacher_name).of_type(:string) }
    it { is_expected.to have_db_column(:student_name).of_type(:string) }
    it { is_expected.to have_db_column(:appointment_id).of_type(:integer) }
  end

  context 'table indexes' do
    it { is_expected.to have_db_index(:appointment_id) }
  end
end

