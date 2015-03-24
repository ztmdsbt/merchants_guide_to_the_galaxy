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

class LanguageSymbol < ActiveRecord::Base
  belongs_to :language_types
end
