# == Schema Information
#
# Table name: roman_symbols
#
#  id          :integer          not null, primary key
#  name        :string
#  value       :integer
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe RomanSymbol, type: :model do

  context '#singlton_symbols' do
    subject { RomanSymbol.singleton_symbols.first.name.length }
    it { is_expected.to eq 1 }
  end

  context '#combined_symbols' do
    subject { RomanSymbol.combined_symbols.first.name.length }
    it { is_expected.to eq 2 }
  end
end
