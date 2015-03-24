require 'rails_helper'

describe SymbolCorrespondingSerivce do

  let(:language_symbol_id) { 1 }
  let(:rome_symbol_id) { 1 }

  subject { SymbolCorrespondingSerivce.new }

  before do
    # FactoryGirl.create()
  end

  it 'should Created a [Rome symbol <==> Language symbol] corresponding' do
    expect { subject.create_symbol_corresponding(language_symbol_id, rome_symbol_id) }
        .to change { SymbolCorresponding.count }.from(0).to(1)
  end
end