class SymbolCorrespondingService
  def create_symbol_corresponding(language_symbol_id, rome_symbol_id)
    SymbolCorresponding.create({language_symbol_id: language_symbol_id, rome_symbol_id: rome_symbol_id})
  end
end