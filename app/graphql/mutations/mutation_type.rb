module Mutations
  CreateProductCategory = GraphQL::Relay::Mutation.define do

    input_field :name, !types.String
    input_field :description, types.String

    return_type Types::ProductCategoryType

    resolve ->(object, inputs, ctx) {
      ProductCategory.create(name: inputs[:name], description: inputs[:description])
    }
  end

  MutationType = GraphQL::ObjectType.define do
    name 'Mutations'
    description 'A bunch of guys ready to cause side effects'

    field :createProductCategory, field: CreateProductCategory.field
    field :createProduct, field: CreateProduct.field
  end
end
