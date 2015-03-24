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

require 'rails_helper'

RSpec.describe SymbolCorresponding, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"
end
