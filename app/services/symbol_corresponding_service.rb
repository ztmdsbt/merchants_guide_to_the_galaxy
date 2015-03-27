class SymbolCorrespondingService
  def create_symbol_corresponding(language_symbol_id, roman_symbol_id)
    SymbolCorresponding.create({language_symbol_id: language_symbol_id, roman_symbol_id: roman_symbol_id})

    #todo: should need build combined corresponding?
  end
end