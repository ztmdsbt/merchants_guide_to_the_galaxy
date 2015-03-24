# == Schema Information
#
# Table name: language_symbols
#
#  id               :integer          not null, primary key
#  name             :string
#  language_type_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_langage_symbols_on_language_type_id  (language_type_id)
#

FactoryGirl.define do
  factory :language_symbol do

    name { Faker::Lorem.words(1) }
    association :language_type_id, factory: :language_type
  end
end
