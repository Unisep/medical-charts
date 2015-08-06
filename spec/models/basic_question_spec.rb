require 'rails_helper'

RSpec.describe BasicQuestion, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:questionable) }
  end

  context 'model validations' do
  end

  context 'table fields' do
    it { is_expected.to have_db_column(:questionable_id).of_type(:integer) }
    it { is_expected.to have_db_column(:parent_id).of_type(:integer) }
  end

  context 'table indexes' do
    it { is_expected.to have_db_index(:questionable_id) }
  end
end

