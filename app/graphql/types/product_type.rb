Types::ProductType = GraphQL::ObjectType.define do
  name 'Product'
  description 'A Product'
  field :id, !types.ID
  field :name, !types.String
  field :description, types.String
  field :price, types.Float
  field :product_category do
    type Types::ProductCategoryType
    resolve ->(product, _args, ctx) {
      product.product_category
    }
  end
end


