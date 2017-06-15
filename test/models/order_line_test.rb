# == Schema Information
#
# Table name: order_lines
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  product_id :integer
#  price      :decimal(, )
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_order_lines_on_order_id    (order_id)
#  index_order_lines_on_product_id  (product_id)
#

require 'test_helper'

class OrderLineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
