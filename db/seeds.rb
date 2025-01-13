# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Recipe.destroy_all

recipes = [
  {
    name: "Spicy Thai Noodles",
    description: "A delicious blend of rice noodles tossed in a spicy garlic sauce with fresh veggies.",
    image_url: "https://www.thissavoryvegan.com/wp-content/uploads/2020/05/vegan-spicy-thai-noodles-2.jpg",
    rating: rand(6.0..9.5).round(1)
  },
  {
    name: "Classic Margherita Pizza",
    description: "Traditional Italian pizza with fresh mozzarella, basil, and homemade tomato sauce.",
    image_url: "https://ohsweetbasil.com/wp-content/uploads/how-to-make-authentic-margherita-pizza-at-home-recipe-4.jpg",
    rating: rand(7.0..10.0).round(1)
  },
  {
    name: "Creamy Mushroom Risotto",
    description: "Rich and creamy risotto cooked slowly with wild mushrooms and Parmesan cheese.",
    image_url: "https://www.spendwithpennies.com/wp-content/uploads/2023/07/1200-Creamy-Mushroom-Risotto-SpendWithPennies.jpg",
    rating: rand(6.5..9.0).round(1)
  },
  {
    name: "Grilled Lemon Garlic Salmon",
    description: "Perfectly grilled salmon fillets marinated in lemon, garlic, and fresh herbs.",
    image_url: "https://www.cookingclassy.com/wp-content/uploads/2018/05/grilled-lemon-herb-salmon-7.jpg",
    rating: rand(8.0..10.0).round(1)
  }
]

recipes.each do |recipe|
  Recipe.create!(recipe)
end
