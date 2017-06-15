Types::ProductCategoryType = GraphQL::ObjectType.define do
  name 'ProductCategory'
  description 'Product Category'

  field :id, !types.ID
  field :name, !types.String
  field :description, types.String
end
