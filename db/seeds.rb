require "faker"

# usuários teste
user = User.new(email: "pedro@teste.com.br", password: "123123", name: "Pedro", job: "Full-stack developer")
user.save!

program = Program.new(user: user, category: "rails", name: "aprenda rails", description: "esse programa é massa")
program.save!
program = Program.new(user: user, category: "ruby", name: "aprenda ruby", description: "esse programa também é massa")
program.save!

people = {
  person1: {
    name: "Ana Luiza Almeida",
    job: "Especialista Front-End",
    user_description: "Olá! Sou a Ana Luiza Almeida, especialista front-end apaixonada por criar experiências digitais excepcionais. Com formação sólida em desenvolvimento web e mente criativa, transformo ideias em interfaces interativas envolventes. Na Pixel Solutions Inc., lidero projetos desafiadores, colaborando com designers e especialistas em UX para entregar produtos de classe mundial. Minha abordagem centrada no usuário e compromisso com a qualidade impulsionam o padrão do front-end, inspirando colegas. Busco aprendizado contínuo e novas habilidades para impulsionar o sucesso dos projetos. Animada para crescer profissionalmente e desenvolver soluções incríveis para nossos clientes.",
    program_description: "Aprimore suas habilidades em HTML, CSS e JavaScript com a orientação de profissionais experientes. Crie sites e aplicativos de alto desempenho que se destacam no mercado.",
    company: "Pixel Solutions Inc."
  },
  person2: {
    name: "Lucas Oliveira",
    job: "Desenvolvedor Mobile Sênior",
    user_description: "Olá! Sou o Lucas Oliveira, desenvolvedor mobile sênior apaixonado por criar aplicativos inovadores. Com vasta experiência em desenvolvimento, crio soluções móveis envolventes. Na DataMinds Co., lidero projetos desafiadores, colaborando com equipes para entregar apps de qualidade. Minha busca por conhecimento impulsiona meu crescimento profissional e o sucesso dos projetos. Animado para criar soluções incríveis para nossos clientes.",
    program_description: "Especialize-se no desenvolvimento para iOS e Android com o suporte de mentores experientes. Transforme suas ideias em aplicativos móveis inovadores.",
    company: "DataMinds Co."
  },
  person3: {
    name: "Marina Silva",
    job: "UX/UI Sênior",
    user_description: "Eu sou Marina Silva, uma profissional apaixonada por UX/UI, comprometida com a inovação e o design centrado no usuário. Na InnovationLabs, como UX/UI Senior, lidero projetos transformadores, unindo conhecimento do comportamento do usuário e criação de interfaces intuitivas e atraentes. Minha abordagem é colaborativa, buscando o melhor da equipe e promovendo uma cultura de aprendizado contínuo. Além disso, sou defensora da sustentabilidade e do impacto social positivo. Fora do trabalho, desfruto de atividades ao ar livre que alimentam meu espírito criativo e aventureiro. Minha missão é inovar e fazer a diferença na vida das pessoas.",
    program_description: "Domine a arte do design centrado no usuário, criando interfaces intuitivas e visualmente atraentes. Aperfeiçoe suas habilidades de UX/UI com orientação especializada.",
    company: "InnovationLabs Ltd."
  },
  person4: {
    name: "Rafael Santos",
    job: "Arquiteto de Software",
    user_description: "Creative graphic designer with an eye for aesthetics.",
    program_description: "Designing visually stunning graphics for digital media.",
    company: "ArtCraft Studios"
  },
  person5: {
    name: "Pedro Mendes",
    job: "Especialista Full-Stack",
    user_description: "Results-driven marketing specialist with a passion for brand promotion.",
    program_description: "Creating and executing marketing campaigns to drive growth.",
    company: "MarketPro Solutions"
  },
  person6: {
    name: "Camila Costa",
    job: "Accountant",
    user_description: "Detail-oriented accountant with expertise in financial analysis.",
    program_description: "Ensuring financial accuracy and compliance for clients.",
    company: "AccuCountants Inc."
  },
  person7: {
    name: "Grace",
    job: "HR Manager",
    user_description: "Empathetic HR manager focused on fostering a positive work environment.",
    program_description: "Managing talent acquisition and employee relations.",
    company: "TalentHub Solutions"
  },
  person8: {
    name: "Henry",
    job: "Sales Representative",
    user_description: "Charismatic sales representative skilled in building lasting customer relationships.",
    program_description: "Promoting and selling innovative tech solutions to clients.",
    company: "TechSellers"
  },
  person9: {
    name: "Ivy",
    job: "UX Designer",
    user_description: "User-centric UX designer dedicated to creating intuitive digital experiences.",
    program_description: "Designing wireframes and prototypes for user interfaces.",
    company: "UX Innovations"
  },
  person10: {
    name: "Jack",
    job: "Content Writer",
    user_description: "Versatile content writer with a knack for storytelling.",
    program_description: "Producing engaging and SEO-friendly content across various platforms.",
    company: "WordCrafters Inc."
  },
  person11: {
    name: "Katie",
    job: "Project Manager",
    user_description: "Organized project manager with a track record of delivering successful projects.",
    program_description: "Leading cross-functional teams to achieve project goals.",
    company: "ProjectLink Solutions"
  },
  person12: {
    name: "Luke",
    job: "Business Analyst",
    user_description: "Analytical business analyst passionate about optimizing operational processes.",
    program_description: "Analyzing data to provide valuable insights for business improvement.",
    company: "DataOptimize Inc."
  }
}

