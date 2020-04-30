# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctor.destroy_all
Appointment.destroy_all
Patient.destroy_all
City.destroy_all

100.times do
    Doctor.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        specialty: ["généraliste","gynécologue", "dentiste", "homéopathe","psychologue","psychiatre"].sample ,
        zip_code: Faker::Address.zip_code,
        city: city
    )
    Patient.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        city: city
    )
    Appointment.create!(
        date: Faker::Date.forward(days: 30),
        doctor: doctor,
        patient: patient,
        city: city
    )
    City.create!(
        name: Faker::
    )
end