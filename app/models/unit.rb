# == Schema Information
#
# Table name: units
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Unit < ActiveRecord::Base
end
