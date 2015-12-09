require 'rails_helper'

RSpec.describe Tooth, type: :model do
  context 'associations' do
  end

  context 'model validations' do
  end

  context 'table fields' do
    it { is_expected.to have_db_column(:quarter).of_type(:integer) }
    it { is_expected.to have_db_column(:position).of_type(:integer) }
    it { is_expected.to have_db_column(:full).of_type(:integer) }
  end

  context 'table indexes' do
  end
end

