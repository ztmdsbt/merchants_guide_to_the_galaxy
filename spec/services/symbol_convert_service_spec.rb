require 'rails_helper'

describe SymbolConvertService do

  subject { SymbolConvertService.new }

  before do
    FactoryGirl.create(:language_symbol)
  end

  context 'corresponding with single symbol.' do
    let(:language_symbol_id) { LanguageSymbol.first.id }
    let(:rome_symbol_id) { RomeSymbol.first.id }

    before do
      FactoryGirl.create(:language_symbol)
    end

    it 'should Created a [Rome symbol <==> Language symbol] corresponding' do
      expect { subject.create_symbol_corresponding(language_symbol_id, rome_symbol_id) }
          .to change { SymbolCorresponding.count }.from(0).to(1)
    end
  end
end
