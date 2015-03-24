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

class RomeSymbol < ActiveRecord::Base
end
