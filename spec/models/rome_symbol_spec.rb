# == Schema Information
#
# Table name: rome_symbols
#
#  id               :integer          not null, primary key
#  name             :string
#  value            :integer
#  description      :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  language_type_id :integer
#
# Indexes
#
#  index_rome_symbols_on_language_type_id  (language_type_id)
#

require 'rails_helper'

RSpec.describe RomeSymbol, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
end
