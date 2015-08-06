require 'rails_helper'

RSpec.xdescribe Answer, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:historical_question) }
  end

  context 'model validations' do
  end

  context 'table fields' do
    it { is_expected.to have_db_column(:bool).of_type(:boolean) }
    it { is_expected.to have_db_column(:description).of_type(:string) }
    it { is_expected.to have_db_column(:historical_question_id).of_type(:integer) }
  end

  context 'table indexes' do
    it { is_expected.to have_db_index(:historical_question_id) }
  end
end

