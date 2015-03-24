require 'rspec'

describe  SymbolCorrespondingSerivce do

  let(language_type_name){''}

  subject{SymbolCorrespondingSerivce.new.create_symbol_corresponding(language_type_name,rome_symbol_id)}
  it 'should Created a [Rome symbol <==> Language symbol] corresponding' do
    expect()
  end
end