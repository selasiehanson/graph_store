Types::OrderType = GraphQL::ObjectType.define do
  name 'Order'
  description 'Consits of one more items a customer is purchasing'

  field :customer  do
    type Types::CustomerType
    resolve ->(order, args, _ctx) { order.customer }
  end

  field :orderLines, types[Types::OrderLineType], property: :order_lines
end
