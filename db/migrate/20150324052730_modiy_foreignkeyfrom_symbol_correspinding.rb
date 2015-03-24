class ModiyForeignkeyfromSymbolCorrespinding < ActiveRecord::Migration
  def change
    remove_reference :symbol_correspondings, :language_type

    add_reference :symbol_correspondings, :language_symbol
    add_foreign_key :symbol_correspondings, :language_symbols
  end
end
