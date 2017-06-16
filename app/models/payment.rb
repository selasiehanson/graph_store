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

class Payment < ApplicationRecord
  belongs_to :order
end
