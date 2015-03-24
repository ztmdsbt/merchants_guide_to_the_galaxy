# == Schema Information
#
# Table name: symbol_correspondings
#
#  id                 :integer          not null, primary key
#  rome_symbol_id     :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  language_symbol_id :integer
#
# Indexes
#
#  index_symbol_correspondings_on_rome_symbol_id  (rome_symbol_id)
#

class SymbolCorresponding < ActiveRecord::Base
  belongs_to :language_symbol
  belongs_to :rome_symbol
end
