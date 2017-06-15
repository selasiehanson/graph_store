Types::AddressType = GraphQL::ObjectType.define do
  name 'Address'
  description 'A generic addess type either for shipping or billing or a customer'

  field :id, !types.ID
  field :fullname, !types.String
  field :details, !types.String, property: :line
  field :city, !types.String
  field :phone, !types.String
  field :customer do
    type Types::CustomerType
    resolve ->(address, _args, _ctx) {
      address.customer
    }
  end
end
