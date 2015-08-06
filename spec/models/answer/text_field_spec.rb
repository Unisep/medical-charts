require 'rails_helper'

RSpec.describe Answer::TextField, type: :model do
  context 'associations' do
  end

  context 'model validations' do
  end

  context 'table fields' do
    it { is_expected.to have_db_column(:description).of_type(:string) }
  end

  context 'table indexes' do
  end
end

