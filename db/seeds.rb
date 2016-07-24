product_1 = Product.new(name: "Turntable that only plays Wutang", price: "10")
product_1.save
product_2 = Product.new(name: "80's calculator watch", price: "400")
product_2.save

puts "Hey Shiran I just added #{product_2.name} to the database"

