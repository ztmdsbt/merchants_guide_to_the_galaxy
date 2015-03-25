class SymbolConvertService
  def convert_symbol_to_rome(symbol_string, language_type_name = 'Galaxy')
    symbol_array = symbol_string.split(' ')
    language_type_id = get_language_type_id(language_type_name)
    symbol_array.map do |symbol|
      get_symbol_corresponding(language_type_id, symbol).rome_symbol
    end.join(' ')
  end

  def get_language_type_id(language_type_name)
    language_type_id = LanguageType.find_by(name: language_type_name).id
  end

  def get_symbol_corresponding(language_type_id, symbol)
    language_symbol = LanguageSymbol.find_by(name: symbol, language_type_id: language_type_id)
    SymbolCorresponding.find_by_language_symbol(language_symbol)
  end
end