require "faker"

Company.create!(
  name: 'Jesher Minelli Alves',
  description: 'Enchendo linguiça aqui para fazer uma descrição',
  email: 'jesherdevsk8@gmail.com',
  password: '123123',
  password_confirmation: '123123' 
)

(1..2).each do |id|
  Company.create!(
    name: Faker::Company.unique.name,
    description: Faker::Lorem.paragraph,
    email: Faker::Internet.email,
    password: '123123',
    password_confirmation: '123123'                                      
  )
end

# Após o rails db:seed, execute esse bloco de código duas vezes no terminal, com company_id 2 e 3
(1..10).each do |id|
  Vacancy.create!(
    title: Faker::Job.title,
    location: 'Arizona AZ',                                                    
    description: Faker::Lorem.paragraph,                                                 
    requirements: Faker::Hacker.adjective,                                                
    salary: 'R$ 10.000,00',                                                      
    available: true,
    company_id: 1
  )
end


