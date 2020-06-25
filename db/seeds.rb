# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Applicant.destroy_all
Employer.destroy_all
Interview.destroy_all

20.times do
    Applicant.create(f_name: Faker::Name.first_name, l_name: Faker::Name.last_name,
    email: Faker::Internet.email)
end

20.times do
    Employer.create(f_name: Faker::Name.first_name, l_name: Faker::Name.last_name,
    company: Faker::Company.name, address: Faker::Address.street_address)
end

employer_ids = Employer.pluck(:id)
applicant_ids = Applicant.pluck(:id)

dates = ["2050-06-10 10:00:00", "2050-06-10 12:00:00", "2050-06-10 14:00:00",
    "2050-06-10 16:00:00", "2050-06-10 18:00:00", "2050-06-10 20:00:00",
    "2050-06-10 22:00:00", "2050-06-10 24:00:00", "2050-06-10 8:00:00", "2050-06-10 6:00:00", "2050-06-10 7:00:00"]

count = 0


10.times do
    Interview.create(applicant_id: applicant_ids.sample, employer_id: employer_ids.sample,
    date_of_interview: dates[count])
    count += 1
end
10.times do
    Interview.create(applicant_id: applicant_ids.sample, employer_id: employer_ids.sample,
    date_of_interview: dates[count])
    count -= 1
end



    


