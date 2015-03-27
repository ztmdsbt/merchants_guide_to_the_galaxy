require 'rails_helper'

describe SymbolConvertService do
  let(:symbol_convert) { SymbolConvertService.new.convert_symbol_to_rome(galaxy_string) }
  let!(:language_symbol_first) { FactoryGirl.create(:language_symbol, name: 'brok') }
  let!(:language_symbol_second) { FactoryGirl.create(:language_symbol, name: 'hash') }
  let!(:language_symbol_third) { FactoryGirl.create(:language_symbol, name: 'link') }

  subject { symbol_convert }

  before do
    FactoryGirl.create(:symbol_corresponding,
                       language_symbol_id: language_symbol_third.id,
                       roman_symbol_id: RomanSymbol.singleton_symbols.first.id)
    FactoryGirl.create(:symbol_corresponding,
                       language_symbol_id: language_symbol_second.id,
                       roman_symbol_id: RomanSymbol.singleton_symbols.second.id)
    FactoryGirl.create(:symbol_corresponding,
                       language_symbol_id: language_symbol_first.id,
                       roman_symbol_id: RomanSymbol.singleton_symbols.third.id)
  end

  context 'should convert to right rome symbols.' do
    let(:galaxy_string) { "brok hash link" }

    it { is_expected.to eq "XVI" }
  end

  context 'validate input string validity.' do
    let(:galaxy_string) { "brok link hash" }

    it { expect { subject }.to raise_error }
  end
end
