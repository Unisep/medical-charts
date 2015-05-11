require 'rails_helper'

describe TranslationHelper, type: :helper do
  describe '.translate_model_name' do
    it { expect(tm Patient).to eq('Paciente') }
    it { expect(tm Patient, count: 2).to eq('Pacientes') }
  end

  describe '.translate_model_name_pluralized' do
    it { expect(tmp Patient).to eq('Pacientes') }
  end

  describe '.translate_model_attribute' do
    it { expect(ta Patient, :name).to eq('Nome') }
  end
end
