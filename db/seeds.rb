# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  username = Faker::Name.unique.first_name
  User.create(username: username, password_digest: BCrypt::Password.create(username))
end

50.times do
  title = Faker::Book.unique.title
  summary = Faker::Lorem.sentence(5, false, 5)
  story = Faker::Lorem.paragraph(3, false, 3)
  user_id = User.all.sample.id
  Fic.create(title: title, summary: summary, story: story, user_id: user_id)
end
