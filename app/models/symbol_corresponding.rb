# == Schema Information
#
# Table name: symbol_correspondings
#
#  id               :integer          not null, primary key
#  language_type_id :integer
#  rome_symbol_id   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_symbol_correspondings_on_language_type_id  (language_type_id)
#  index_symbol_correspondings_on_rome_symbol_id    (rome_symbol_id)
#

class SymbolCorresponding < ActiveRecord::Base
  belongs_to :language_type
  belongs_to :rome_symbol
end
