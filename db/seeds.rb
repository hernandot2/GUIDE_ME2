user = User.new(email: "pedro@teste.com.br", password: "123123")
user.save!

program = Program.new(user: user, category: "rails", name: "aprenda rails", description: "esse programa é massa")
program.save!
program = Program.new(user: user, category: "ruby", name: "aprenda ruby", description: "esse programa também é massa")
program.save!
