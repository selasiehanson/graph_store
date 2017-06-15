Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The root query'

  field :productCategory do
  description 'A list of products categories'
    resolve ->(obj, args, ctx) {
      ProductCategory.all
    }
  end

  field :productCategory do
    type Types::ProductType
    argument :id, !types.ID
    description 'A single product category'
    resolve ->(_obj, args, ctx) { ProductCategory.find(args['id']) }
  end


  field :products, types[Types::ProductType] do
    description 'A list of products'
    resolve ->(obj, args, ctx) {
      Product.all
    }
  end

  field :product do
    type Types::ProductType
    argument :id, !types.ID
    description 'A single product'
    resolve ->(_obj, args, ctx) { Product.find(args['id']) }
  end

  field :customer do
    type Types::CustomerType
    argument :id, !types.ID
    description 'A Customer'
    resolve -> (_obj, args, _ctx) { Customer.find(args[:id]) }
  end

  field :order do
    type Types::OrderType
    argument :id, !types.ID
    description 'An Order'
    resolve ->(_obj, args, _ctx) { Order.find(args["id"]) }
  end

  field :orders, types[Types::OrderType] do
    description 'A list of products'
    resolve ->(obj, args, ctx) {
      Order.all
    }
  end


  field :customers, types[Types::CustomerType] do
    description 'A list of customers'
    resolve ->(obj, args, ctx) {
      Customer.all
    }
  end


end
