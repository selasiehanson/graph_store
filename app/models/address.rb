# == Schema Information
#
# Table name: addresses
#
#  id          :integer          not null, primary key
#  fullname    :string
#  line        :text
#  city        :string
#  phone       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :integer
#
# Indexes
#
#  index_addresses_on_customer_id  (customer_id)
#

class Address < ApplicationRecord
end
