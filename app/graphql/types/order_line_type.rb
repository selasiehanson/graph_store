Types::OrderLineType = GraphQL::ObjectType.define do

  name 'OrderLine'
  description 'A line item or product detail in an order'

  field :id, !types.ID
  field :price, !types.Float
  field :product do
    type Types::ProductType
    resolve ->(order, _args, _ctx) { order.product }
  end

end
