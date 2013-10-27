require 'faker'
require_relative '../models/student'

10.times do
  Teacher.create(name: Faker::Name.name, phone: Faker::PhoneNumber.phone_number, email: Faker::Internet.email)
end
