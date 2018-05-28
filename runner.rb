require 'unirest'
products= Unirest.get('http://localhost:3000/api/product_url').body

puts JSON.pretty_generate(products)