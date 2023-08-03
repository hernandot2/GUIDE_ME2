# usuários teste
user = User.new(email: "teste@teste.com.br", password: "123123", name: "Pedro", job: "Full-stack developer")
user.save!

people = {
  person1: {
    name: "Ana Luiza Almeida",
    job: "Especialista Front-End",
    user_description: "Especialista front-end apaixonada por criar experiências digitais excepcionais. Líder de projetos desafiadores na Pixel Solutions Inc.",
    program_description: "Aprimore suas habilidades em HTML, CSS e JavaScript com orientação de profissionais experientes.",
    program_name: "Desenvolvimento Web",
    program_category: "Desenvolvimento",
    company: "Pixel Solutions",
    email: "ana.luiza@example.com"
  },
  person2: {
    name: "Lucas Oliveira",
    job: "Desenvolvedor Mobile Sênior",
    user_description: "Desenvolvedor mobile sênior apaixonado por criar aplicativos inovadores. Líder de projetos na DataMinds Co.",
    program_description: "Especialize-se no desenvolvimento para iOS e Android com o suporte de mentores experientes.",
    program_name: "Desenvolvimento Mobile",
    program_category: "Desenvolvimento",
    company: "DataMinds",
    email: "lucas.oliveira@example.com"
  },
  person3: {
    name: "Marina Silva",
    job: "UX/UI Sênior",
    user_description: "UX/UI sênior comprometida com inovação e design centrado no usuário. Líder de projetos transformadores na InnovationLabs.",
    program_description: "Domine a arte do design centrado no usuário, criando interfaces intuitivas e visualmente atraentes.",
    program_name: "UX/UI Design Avançado",
    program_category: "Design",
    company: "InnovationLabs",
    email: "marina.silva@example.com"
  },
  person4: {
    name: "Rafael Santos",
    job: "Arquiteto de Software",
    user_description: "Arquiteto de software dedicado a criar soluções inovadoras na ArtCraft Studios.",
    program_description: "Aprenda a projetar sistemas modernos e robustos com orientação especializada.",
    program_name: "Arquitetura de Software Moderna",
    program_category: "Desenvolvimento",
    company: "ArtCraft Studios",
    email: "rafael.santos@example.com"
  },
  person5: {
    name: "Pedro Mendes",
    job: "Especialista Full-Stack",
    user_description: "Especialista Fullstack entusiasmado em criar soluções inovadoras na MarketPro Solutions.",
    program_description: "Torne-se um desenvolvedor Full Stack completo, dominando front-end e back-end.",
    program_name: "Desenvolvimento Full-Stack",
    program_category: "Desenvolvimento",
    company: "MarketPro Solutions",
    email: "pedro.mendes@example.com"
  },
  person6: {
    name: "Camila Costa",
    job: "Especialista em Cibersegurança",
    user_description: "Especialista em cibersegurança apaixonada por proteger empresas na AccurateSecurity.",
    program_description: "Proteja sistemas e dados contra ameaças digitais com orientação de especialistas.",
    program_name: "Segurança Cibernética Avançada",
    program_category: "Segurança",
    company: "AccurateSecurity",
    email: "camila.costa@example.com"
  },
  person7: {
    name: "Felipe Souza",
    job: "Cientista de Dados",
    user_description: "Cientista de dados apaixonado por transformar dados em insights valiosos na TalentHub Solutions.",
    program_description: "Explore o mundo da ciência de dados com orientação de mentores especializados.",
    program_name: "Data Science e Análise de Dados",
    program_category: "Ciência de Dados",
    company: "TalentHub Solutions",
    email: "felipe.souza@example.com"
  },
  person8: {
    name: "Vanessa Ferreira",
    job: "Líder em Desenv. Ágil",
    user_description: "Líder em desenvolvimento ágil na TechSellers, comprometida em impulsionar eficiência e qualidade.",
    program_description: "Aprenda a integrar desenvolvimento e operações com mentores qualificados.",
    program_name: "Dev-Ops e Entrega Contínua",
    program_category: "Desenvolvimento",
    company: "TechSellers",
    email: "vanessa.ferreira@example.com"
  },
  person9: {
    name: "Rafael Castro",
    job: "Especialista em Game Design",
    user_description: "Especialista em game design na UX Innovations, apaixonado por criar experiências envolventes.",
    program_description: "Aprenda a criar jogos envolventes e dominar engines.",
    program_name: "Desenvolvimento de Jogos",
    program_category: "Design",
    company: "UX Innovations",
    email: "rafael.castro@example.com"
  },
  person10: {
    name: "Bianca Oliveira",
    job: "Hacker Ética Sênior",
    user_description: "Hacker ética sênior na WordCrafters, comprometida em proteger sistemas e dados de clientes.",
    program_description: "Descubra vulnerabilidades e fortaleça a segurança dos sistemas com orientação especializada.",
    program_name: "Cibersegurança Ofensiva",
    program_category: "Segurança",
    company: "WordCrafters",
    email: "bianca.oliveira@example.com"
  },
  person11: {
    name: "Gustavo Rodrigues",
    job: "Engenheiro de Dados",
    user_description: "Engenheiro de dados na DataOptimize, trabalhando para transformar dados em insights significativos.",
    program_description: "Domine a infraestrutura para análise de Big Data com orientação de um mentor especialista.",
    program_name: "Data Engineering para Big Data",
    program_category: "Ciência de Dados",
    company: "DataOptimize",
    email: "gustavo.rodrigues@example.com"
  },
  person12: {
    name: "Isabela Almeida",
    job: "Especialista em Experiências Imersivas",
    user_description: "Especialista em experiências imersivas na ProjectLink Solutions, buscando criar experiências memoráveis através da realidade virtual e aumentada.",
    program_description: "Explore o mundo imersivo da RV e RA com orientação de um expert.",
    program_name: "Realidade Virtual e Aumentada",
    program_category: "Design",
    company: "ProjectLink Solutions",
    email: "isabela.almeida@example.com"
  },
  person13: {
    name: "Gabriel Santos",
    job: "Ruby on Rails Developer",
    user_description: "Sou um desenvolvedor apaixonado por Ruby on Rails e tenho o prazer de compartilhar meus conhecimentos com outros entusiastas. Na CodeMasters Academy, como instrutor de Ruby on Rails, ajudo os alunos a dominar o desenvolvimento web com este poderoso framework. Minhas aulas são práticas, enfatizando o aprendizado através da criação de projetos reais. Com foco na escalabilidade e boas práticas de desenvolvimento, meus alunos aprendem a criar aplicativos web completos e sofisticados.",
    program_description: "Aprenda a desenvolver aplicativos web com Ruby on Rails, desde conceitos básicos até recursos avançados.",
    program_name: "Desenvolvimento Web com Ruby on Rails",
    program_category: "Ruby on Rails Development",
    company: "CodeMasters Academy",
    email: "gabriel.santos@example.com"
  }
}

people.each do |person, info|
  user = User.new(name: info[:name], job: info[:job],company: info[:company], description: info[:user_description], email: info[:email], password: "123123")
  user.save!
  program = Program.new(user: user,name: info[:program_name], description: info[:program_description],category:  info[:program_category])
  program.save!
end




user = User.new(email: "pedro@teste.com.br", password: "123123", name: "Pedro", job: "Full-stack developer")

program = Program.new(user: user, category: "rails", name: "aprenda rails", description: "esse programa é massa")
program.save!
program = Program.new(user: user, category: "ruby", name: "aprenda ruby", description: "esse programa também é massa")
program.save!
