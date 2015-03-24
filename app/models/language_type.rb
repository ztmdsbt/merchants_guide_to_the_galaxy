# == Schema Information
#
# Table name: language_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LanguageType < ActiveRecord::Base
  has_many :language_symbols
  has_many :product_prices
  has_many :unit_values
end
