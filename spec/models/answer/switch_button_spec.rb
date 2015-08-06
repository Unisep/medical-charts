require 'rails_helper'

RSpec.describe Answer::SwitchButton, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:basic_question) }
  end

  context 'model validations' do
  end

  context 'table fields' do
    it { is_expected.to have_db_column(:on).of_type(:string) }
    it { is_expected.to have_db_column(:off).of_type(:string) }
    it { is_expected.to have_db_column(:checked).of_type(:boolean) }
    it { is_expected.to have_db_column(:basic_question_id).of_type(:integer) }
  end

  context 'table indexes' do
    it { is_expected.to have_db_index(:basic_question_id) }
  end
end

