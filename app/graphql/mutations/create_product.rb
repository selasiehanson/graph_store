Mutations::CreateProduct = GraphQL::Relay::Mutation.define do
  name 'create_product'

  input_field :name, !types.String
  input_field :product_category_id, !types.ID
  input_field :description, types.String

  return_type Types::ProductType

  resolve ->(_obj, inputs, _ctx) {
    Product.create(name: inputs[:name],
                   description: inputs[:description],
                   product_category_id: inputs[:product_category_id])
  }
end
