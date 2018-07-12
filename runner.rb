require 'unirest'
# products= Unirest.get('http://localhost:3000/api/product_url').body

# puts "Please add the name of the product."
# name = gets.chomp
# puts "What is the price?"
# price = gets.chomp.to_i
# puts "Where can you see an image of the product?"
# image_url = gets.chomp
# puts "Describe the product."
# description = gets.chomp

# # 
# puts "Which product id number do you want to delete?"
# product_id = gets.chomp



# response = Unirest.delete("http://localhost:3000/api/products/#{product_id}").body


# p response

  response = Unirest.post(
    "http://localhost:3000/users",
    parameters: {
      name: "Peter",
      email: "peter@email.com",
      password: "password",
      password_confirmation: "password"
    }
  )
  p response.body
