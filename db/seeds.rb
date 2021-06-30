require 'faker'


puts 'cleaning database'


Restaurant.destroy_all
User.destroy_all


puts 'generating users & restaurants'


User.create({
  email: 'test@gmail.com',
  password: 'password'
})


(1..15).each do |id|
  Restaurant.create({
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    food_type: Faker::Restaurant.type
  })
end


puts "Done!"
