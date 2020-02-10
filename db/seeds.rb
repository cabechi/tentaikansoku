# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  user = User.create(
      email: Faker::Internet.unique.email,
      username: Faker::Internet.unique.user_name,
      password: 12345678,
      password_confirmation: 12345678
      )

  user.posts.create(
      body: Faker::Hacker.say_something_smart,
      images: [open("#{Rails.root}/db/fixtures/dummy.png")]
      )
end