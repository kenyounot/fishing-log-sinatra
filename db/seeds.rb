5.times do
    User.create(name: Faker::Name.name, email: Faker::Internet.free_email, password: Faker::Internet.password)
end