# == Schema Information
#
# Table name: product_prices
#
#  id               :integer          not null, primary key
#  product_id       :integer
#  language_type_id :integer
#  price            :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_product_prices_on_language_type_id  (language_type_id)
#  index_product_prices_on_product_id        (product_id)
#

require 'rails_helper'

RSpec.describe ProductPrice, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
end
