require "faker"

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


