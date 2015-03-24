# == Schema Information
#
# Table name: rome_symbols
#
#  id          :integer          not null, primary key
#  name        :string
#  value       :integer
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe RomeSymbol, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
end
