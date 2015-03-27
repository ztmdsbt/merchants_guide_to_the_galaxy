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

FactoryGirl.define do
  factory :symbol_corresponding do

  end
end
