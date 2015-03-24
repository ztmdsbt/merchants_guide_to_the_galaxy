# == Schema Information
#
# Table name: language_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :language_type do
    initialize_with { LanguageType.find_or_create_by(name: 'Galaxy') }
  end

end
