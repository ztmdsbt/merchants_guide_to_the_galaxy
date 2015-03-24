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

require 'rails_helper'

RSpec.describe SymbolCorresponding, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
