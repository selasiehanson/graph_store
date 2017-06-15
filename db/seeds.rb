categories = [
  { name: 'clothing',  description: 'clothing'},
  { name: 'food',  description: 'food'},
  { name: 'drinks', description: 'drinks' }
]
ProductCategory.create(categories)

products = [
  { name: 'Cornflakes', description: 'Cornflakes', product_category_id: 2 },
  { name: 'Gucci Womens bag', description: 'Gucci Womens bag', product_category_id: 1 },
  { name: 'Gucci sunglasses', description: 'Gucci sunglasses', product_category_id: 1 },
  { name: 'Coca Cola', description: 'Coca Cola', product_category_id: 3 },
  { name: 'Fanta', description: 'Fanta', product_category_id: 3 },
  { name: 'Pepsi', description: 'Pepsi', product_category_id: 3 },
  { name: 'Malta Guiness', description: 'Malta Guiness', product_category_id: 3 },
  { name: 'Sprite', description: 'Sprite', product_category_id: 3 },
]
Product.create(products)
