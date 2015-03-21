class AddLanguageTypeRefToRomeSymbols < ActiveRecord::Migration
  def change
    add_reference :rome_symbols, :language_type, index: true
    add_foreign_key :rome_symbols, :language_types
  end
end
