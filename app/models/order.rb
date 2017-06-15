# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_orders_on_customer_id  (customer_id)
#

class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_lines
end
