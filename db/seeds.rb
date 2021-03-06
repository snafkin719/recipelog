# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "山田 太郎",
            email: "sample@example.com",
            password:              "foobar",
            password_confirmation: "foobar",
            admin: true)

99.times do |n|
 name  = Faker::Name.name
 email = "sample-#{n+1}@example.com"
 password = "password"
 User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password)
end

10.times do |n|
  Dish.create!(name: Faker::Food.dish,
               description: "冬に食べたくなる、身体が温まる料理です",
               portion: 1.5,
               tips: "ピリッと辛めに味付けするのがオススメ",
               reference: "https://cookpad.com/recipe/2798655",
               required_time: 30,
               popularity: 5,
               cook_memo: "初めて作った割にはうまくできた！",
               user_id: 1)
end