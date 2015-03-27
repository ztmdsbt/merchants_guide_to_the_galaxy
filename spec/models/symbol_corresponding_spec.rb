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

require 'rails_helper'

RSpec.describe SymbolCorresponding, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"

  subject { SymbolCorresponding.new }

  before do
    language_symbol_first = FactoryGirl.create(:language_symbol, name: 'prok')
    language_symbol_second = FactoryGirl.create(:language_symbol, name: 'hjkw')
    language_symbol_third = FactoryGirl.create(:language_symbol, name: 'lkcj')


    FactoryGirl.create(:symbol_corresponding)
  end

end
