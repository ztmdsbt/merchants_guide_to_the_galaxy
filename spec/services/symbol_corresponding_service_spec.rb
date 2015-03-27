require 'rails_helper'

describe SymbolCorrespondingService do

  subject { SymbolCorrespondingService.new }

  context 'corresponding with single symbol.' do
    let(:language_symbol_id) { LanguageSymbol.first.id }
    let(:roman_symbol_id) { RomanSymbol.first.id }

    before do
      FactoryGirl.create(:language_symbol)
    end

    it 'should Created a [Rome symbol <==> Language symbol] corresponding' do
      expect { subject.create_symbol_corresponding(language_symbol_id, roman_symbol_id) }
          .to change { SymbolCorresponding.count }.from(0).to(1)
    end
  end

  context 'should create corresponding with combined symbol?' do
    let!(:symbol_first) { FactoryGirl.create(:language_symbol) }
    let(:symbol_second) { FactoryGirl.create(:language_symbol, name: 'ankh', language_type_id: symbol_first.language_type_id) }
    let(:roman_symbol_first_id) { RomanSymbol.first.id }
    let(:roman_symbol_second_id) { RomanSymbol.second.id }

    before do
      FactoryGirl.create(:symbol_corresponding, roman_symbol_id: roman_symbol_first_id, language_symbol_id: symbol_first.id)
    end

    skip 'should Created a normal corresponding and a combined corresponding' do
      expect { subject.create_symbol_corresponding(symbol_second.id, roman_symbol_second_id) }
          .to change { SymbolCorresponding.count }.from(1).to(3)
    end
  end
end
