require 'rails_helper'

describe SymbolConvertService do
  let(:symbol_convert) { SymbolConvertService.new.convert_symbol_to_rome(galaxy_string) }
  let(:galaxy_string) { "brok hash link" }
  let!(:language_symbol_first) { FactoryGirl.create(:language_symbol, name: 'brok') }
  let!(:language_symbol_second) { FactoryGirl.create(:language_symbol, name: 'hash') }
  let!(:language_symbol_third) { FactoryGirl.create(:language_symbol, name: 'link') }

  subject { symbol_convert }

  context 'should convert to right rome symbols.' do
    before do
      FactoryGirl.create(:symbol_corresponding,
                         language_symbol_id: language_symbol_third.id,
                         rome_symbol_id: RomeSymbol.first.id)
      FactoryGirl.create(:symbol_corresponding,
                         language_symbol_id: language_symbol_second.id,
                         rome_symbol_id: RomeSymbol.second.id)
      FactoryGirl.create(:symbol_corresponding,
                         language_symbol_id: language_symbol_first.id,
                         rome_symbol_id: RomeSymbol.third.id)
    end

    it { is_expected.to eq "XVI" }
  end
end
