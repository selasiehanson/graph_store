Types::CustomerType = GraphQL::ObjectType.define do
  name 'Customer'
  description 'A customer for the who makes a purchase'

  field :id, !types.ID
  field :name, !types.String
  field :email, !types.String
  field :addresses, types[Types::AddressType]
end
