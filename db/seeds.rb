Image.create!([
  {url: "https://i.ytimg.com/vi/NXLDoATXoh4/maxresdefault.jpg", product_id: 1},
  {url: "http://ak1.ostkcdn.com/images/products/8003014/8003014/Adidas-Mens-Adipure-White-Black-Golf-Shoes-P15368757.jpg", product_id: 2},
  {url: "http://www.golfalot.com/portals/0/imagesbuyingguides/spikes.jpg", product_id: 2},
  {url: "http://cdn.sandals.com/sandals/v11/slideshows/golf/home/slide-01.jpg", product_id: 11},
  {url: "https://pixabay.com/static/uploads/photo/2015/05/28/10/12/sunset-787826_960_720.jpg", product_id: 12},
  {url: "http://cache.marriott.com/propertyimages/p/phxcb/modules/golf/5256759_camelback/phxcb_golf_home.jpg", product_id: 13},
  {url: "https://pixabay.com/static/uploads/photo/2015/05/28/10/12/sunset-787826_960_720.jpg", product_id: 15},
  {url: "http://upperdeckstore.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/l/a/landon-donovan-signed-soccer-cleats-base-80652.jpg", product_id: 2}
])
Product.create!([
  {name: "Super Golf Tees", price: "1.0", description: "hold the golf ball, duh", available: nil, supplier_id: 2},
  {name: "golf balls?", price: "12.0", description: "golf balls!!", available: nil, supplier_id: 1},
  {name: "golf cleats", price: "35.0", description: "you don't move when you strike the ball. duh.", available: nil, supplier_id: 1},
  {name: "Golf Gloves", price: "50.0", description: "stuff", available: nil, supplier_id: 1},
  {name: "stuff", price: "34.0", description: "sdfsd", available: nil, supplier_id: 1},
  {name: "Test", price: "23.0", description: "stuff", available: nil, supplier_id: 2},
  {name: "Golf", price: "23.0", description: "for golf", available: nil, supplier_id: 2},
  {name: "golf stuff", price: "54.0", description: "stuff", available: nil, supplier_id: 1}
])
Supplier.create!([
  {name: "Titlest", email: "titlest@gmail.com", phone: "212.352.5414"},
  {name: "Generic Brand", email: "generic@gmail.com", phone: "212.322.5114"}
])
