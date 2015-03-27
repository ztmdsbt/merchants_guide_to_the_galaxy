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

class RomanSymbol < ActiveRecord::Base
  def self.singleton_symbols
    where("LENGTH(name) = ?", 1)
  end

  def self.combined_symbols
    where("LENGTH(name) = ?", 2)
  end
end
