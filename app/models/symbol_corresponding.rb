# == Schema Information
#
# Table name: symbol_correspondings
#
#  id                 :integer          not null, primary key
#  roman_symbol_id     :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  language_symbol_id :integer
#
# Indexes
#
#  index_symbol_correspondings_on_roman_symbol_id  (roman_symbol_id)
#

class SymbolCorresponding < ActiveRecord::Base
  belongs_to :language_symbol
  belongs_to :roman_symbol

  def self.find_by_language_symbol(language_symbol)
    self.find_by(language_symbol_id: language_symbol.id)
  end
end
