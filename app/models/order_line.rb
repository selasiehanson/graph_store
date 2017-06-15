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

class OrderLine < ApplicationRecord
  belongs_to :order
  belongs_to :product
end
