require 'rails_helper'

describe SymbolCorrespondingService do

  subject { SymbolCorrespondingService.new }

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

  pending "should create corresponding with combined symbol?" do
    context '' do
      let!(:symbol_first) { FactoryGirl.create(:language_symbol) }
      let(:symbol_second) { FactoryGirl.create(:language_symbol, name: 'ankh', language_type_id: symbol_first.language_type_id) }
      let(:rome_symbol_first_id) { RomeSymbol.first.id }
      let(:rome_symbol_second_id) { RomeSymbol.second.id }

      before do
        FactoryGirl.create(:symbol_corresponding, rome_symbol_id: rome_symbol_first_id, language_symbol_id: symbol_first.id)
      end
      it 'should Created a normal corresponding and a combined corresponding' do
        expect { subject.create_symbol_corresponding(symbol_second.id, rome_symbol_second_id) }
            .to change { SymbolCorresponding.count }.from(1).to(3)
      end
    end
  end
end
