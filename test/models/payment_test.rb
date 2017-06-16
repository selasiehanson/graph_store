# == Schema Information
#
# Table name: payments
#
#  id             :integer          not null, primary key
#  order_id       :integer
#  amount         :decimal(9, 2)
#  payment_method :string
#  description    :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_payments_on_order_id  (order_id)
#

require 'test_helper'

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
