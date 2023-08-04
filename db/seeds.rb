require "open-uri"

# usuários teste
user = User.new(email: "teste@teste.com.br", password: "123123", name: "Pedro", job: "Full-stack developer")
user.save!

people = {
  person1: {
    name: "Ana Luiza Almeida",
    job: "Especialista Front-End",
    user_description: "Especialista front-end apaixonada por criar experiências digitais excepcionais. Líder de projetos desafiadores na Pixel Solutions Inc.",
    program_description: "Aprimore suas habilidades em HTML, CSS e JavaScript com orientação de profissionais experientes. Crie sites e aplicativos de alto desempenho que se destacam no mercado.",
    program_name: "Desenvolvimento Web",
    program_category: "Desenvolvimento",
    company: "Pixel Solutions",
    email: "ana.luiza@example.com"
    photo_url: ""
  },
  person2: {
    name: "Lucas Oliveira",
    job: "Desenvolvedor Mobile Sênior",
    user_description: "Desenvolvedor mobile sênior apaixonado por criar aplicativos inovadores. Líder de projetos na DataMinds Co.",
    program_description: "Especialize-se no desenvolvimento para iOS e Android com o suporte de mentores experientes. Transforme suas ideias em aplicativos móveis inovadores.",
    program_name: "Desenvolvimento Mobile",
    program_category: "Desenvolvimento",
    company: "DataMinds",
    email: "lucas.oliveira@example.com",
    photo_url: ""
  },
  person3: {
    name: "Marina Silva",
    job: "UX/UI Sênior",
    user_description: "UX/UI sênior comprometida com inovação e design centrado no usuário. Líder de projetos transformadores na InnovationLabs.",
    program_description: "Domine a arte do design centrado no usuário, criando interfaces intuitivas e visualmente atraentes. Aperfeiçoe suas habilidades de UX/UI com orientação especializada.",
    program_name: "UX/UI Design Avançado",
    program_category: "Design",
    company: "InnovationLabs",
    email: "marina.silva@example.com"
    photo_url: ""
  },
  person4: {
    name: "Rafael Santos",
    job: "Arquiteto de Software",
    user_description: "Arquiteto de software dedicado a criar soluções inovadoras na ArtCraft Studios.",
    program_description: "Aprenda a projetar sistemas modernos e robustos com orientação especializada. Domine as melhores práticas para criar softwares modernos e robustos.",
    program_name: "Arquitetura de Software Moderna",
    program_category: "Desenvolvimento",
    company: "ArtCraft Studios",
    email: "rafael.santos@example.com"
    photo_url: ""
  },
  person5: {
    name: "Pedro Mendes",
    job: "Especialista Full-Stack",
    user_description: "Especialista Fullstack entusiasmado em criar soluções inovadoras na MarketPro Solutions.",
    program_description: "Torne-se um desenvolvedor Full Stack completo, dominando front-end e back-end.  Conduza projetos de ponta a ponta.",
    program_name: "Desenvolvimento Full-Stack",
    program_category: "Desenvolvimento",
    company: "MarketPro Solutions",
    email: "pedro.mendes@example.com"
    photo_url: ""
  },
  person6: {
    name: "Camila Costa",
    job: "Especialista em Cibersegurança",
    user_description: "Especialista em cibersegurança apaixonada por proteger empresas na AccurateSecurity.",
    program_description: "Proteja sistemas e dados contra ameaças digitais com orientação de especialistas. Aprenda técnicas avançadas de defesa e prevenção.",
    program_name: "Segurança Cibernética Avançada",
    program_category: "Segurança",
    company: "AccurateSecurity",
    email: "camila.costa@example.com"
    photo_url: ""
  },
  person7: {
    name: "Felipe Souza",
    job: "Cientista de Dados",
    user_description: "Cientista de dados apaixonado por transformar dados em insights valiosos na TalentHub Solutions.",
    program_description: "Explore o mundo da ciência de dados com orientação de mentores especializados. Aprenda a extrair insights significativos de grandes conjuntos de dados.",
    program_name: "Data Science e Análise de Dados",
    program_category: "Ciência de Dados",
    company: "TalentHub Solutions",
    email: "felipe.souza@example.com"
    photo_url: ""
  },
  person8: {
    name: "Vanessa Ferreira",
    job: "Líder em Desenv. Ágil",
    user_description: "Líder em desenvolvimento ágil na TechSellers, comprometida em impulsionar eficiência e qualidade.",
    program_description: "Aprenda a integrar desenvolvimento e operações com mentores qualificados. Agilize a entrega de software, automatize processos e aumente a eficiência da equipe.",
    program_name: "Dev-Ops e Entrega Contínua",
    program_category: "Desenvolvimento",
    company: "TechSellers",
    email: "vanessa.ferreira@example.com"
    photo_url: ""
  },
  person9: {
    name: "Rafael Castro",
    job: "Especialista em Game Design",
    user_description: "Especialista em game design na UX Innovations, apaixonado por criar experiências envolventes.",
    program_description: "Aprenda a criar jogos envolventes, dominar engines e levar suas ideias ao próximo nível na indústria de games.",
    program_name: "Desenvolvimento de Jogos",
    program_category: "Design",
    company: "UX Innovations",
    email: "rafael.castro@example.com"
    photo_url: ""
  },
  person10: {
    name: "Bianca Oliveira",
    job: "Hacker Ética Sênior",
    user_description: "Hacker ética sênior na WordCrafters, comprometida em proteger sistemas e dados de clientes.",
    program_description: "Descubra vulnerabilidades e fortaleça a segurança dos sistemas com orientação especializada em técnicas de hacking ético.",
    program_name: "Cibersegurança Ofensiva",
    program_category: "Segurança",
    company: "WordCrafters",
    email: "bianca.oliveira@example.com"
    photo_url: ""
  },
  person11: {
    name: "Gustavo Rodrigues",
    job: "Engenheiro de Dados",
    user_description: "Engenheiro de dados na DataOptimize, trabalhando para transformar dados em insights significativos.",
    program_description: "Domine a infraestrutura para análise de Big Data com orientação de um mentor especialista em engenhharia de dados.",
    program_name: "Data Engineering para Big Data",
    program_category: "Ciência de Dados",
    company: "DataOptimize",
    email: "gustavo.rodrigues@example.com"
    photo_url: ""
  },
  person12: {
    name: "Isabela Almeida",
    job: "Especialista em Experiências Imersivas",
    user_description: "Especialista em experiências imersivas na ProjectLink Solutions, buscando criar experiências memoráveis através da realidade virtual e aumentada.",
    program_description: "Explore o mundo imersivo da RV e RA com orientação de uma expert, criando experiências interativas e inovadoras.",
    program_name: "Realidade Virtual e Aumentada",
    program_category: "Design",
    company: "ProjectLink Solutions",
    email: "isabela.almeida@example.com"
    photo_url: ""
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
    photo_url: ""
  }
}

people.each do |person, info|
  file = URI.open(info[:photo_url])
  
  user = User.new(name: info[:name], job: info[:job],company: info[:company], description: info[:user_description], email: info[:email], password: "123123")
  user.photo.attach(io: file, filename: "#{info[:name]}.svg", content_type: "image/svg")
  user.save!

  program = Program.new(user: user,name: info[:program_name], description: info[:program_description],category:  info[:program_category])
  program.save!
end

user = User.new(email: "pedro@teste.com.br", password: "123123", name: "Pedro", job: "Full-stack developer", description: "essa é uma descrição descrita a fim de descrever descrições")

program = Program.new(user: user, category: "rails", name: "aprenda rails", description: "esse programa é massa")
program.save!
program = Program.new(user: user, category: "ruby", name: "aprenda ruby", description: "esse programa também é massa")
program.save!
