# == Schema Information
#
# Table name: unit_values
#
#  id               :integer          not null, primary key
#  unit_id          :integer
#  language_type_id :integer
#  value            :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_unit_values_on_language_type_id  (language_type_id)
#  index_unit_values_on_unit_id           (unit_id)
#

FactoryGirl.define do
  factory :unit_value do
    
  end

end
