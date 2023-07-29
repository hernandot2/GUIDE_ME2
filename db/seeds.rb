require "faker"

user = User.new(email: "pedro@teste.com.br", password: "123123", name: "Pedro")
user.save!

program = Program.new(user: user, category: "rails", name: "aprenda rails", description: "esse programa é massa")
program.save!
program = Program.new(user: user, category: "ruby", name: "aprenda ruby", description: "esse programa também é massa")
program.save!



20.times do
  user = User.new(

    name:           Faker::Name.name,

    description:    Faker::Lorem.paragraphs(number:1),
    email:          Faker::Internet.email,
    password:       "123123",
    job:            Faker::Job.field
  )
  user.save!
end

20.times do
  category = Faker::Job.field
  program = Program.new(
    name:           category,

    description:    Faker::Lorem.paragraphs(number:2).to_s,
    category:       category,
    user:        User.find(rand(1..20))
  )
  program.save!
end
