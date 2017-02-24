# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Lesson.destroy_all

user = User.create!(id: "1", first_name: 'Allison', last_name: 'Grekin', email: 'allison_grekin@hotmail.com', password:'123456', password_confirmation: '123456', photo: File.open(Rails.root.join('app/assets/images/allison.jpg')))
user2 = User.create!(id: "2", first_name: 'Stephen', last_name: 'Choi', email: 'stephen.choi@msn.com', password:'123456', password_confirmation: '123456', photo: File.open(Rails.root.join('app/assets/images/stephen.jpeg')))
user3 = User.create!(id: "3", first_name: 'Archie', last_name: 'San', email: 'archie.hero@msn.com', password:'123456', password_confirmation: '123456', photo: File.open(Rails.root.join('app/assets/images/archie.jpg')))
user4 = User.create!(id: "4", first_name: 'Evan', last_name: 'San', email: 'evan.san@msn.com', password:'123456', password_confirmation: '123456', photo: File.open(Rails.root.join('app/assets/images/evan.png')))
user5 = User.create!(id: "5", first_name: 'Remi', last_name: 'San', email: 'remi.san@msn.com', password:'123456', password_confirmation: '123456', photo: File.open(Rails.root.join('app/assets/images/remi.jpg')))

d = DateTime.new(2017, 3 , 30, 5, 40, 46, "-06:00")
lesson = Lesson.create!(user_id: "1", category: "Cardio", price: "30", start_date_time: d.strftime, duration: "30min", neighborhood:"Chelsea", description: "Cardio exercise is any exercise that raises your heart rate. Face it our bodies were made to move. And we all know that to keep our muscles in shape we need move them.")
lesson2 = Lesson.create!(user_id: "2", category: "Yoga", price: "35", start_date_time: d.strftime, duration: "40min", neighborhood:"Knightsbridge", description: "A Hindu spiritual and ascetic discipline, a part of which, including breath control, simple meditation, and the adoption of specific bodily postures, is widely practised for health and relaxation.")
lesson3 = Lesson.create!(user_id: "3", category: "Weights", price: "35", start_date_time: d.strftime, duration: "50min", neighborhood:"Shoreditch", description: "The sport or activity of lifting barbells or other heavy weights.")
lesson4 = Lesson.create!(user_id: "4", category: "Pilates", price: "25", start_date_time: d.strftime, duration: "30min", neighborhood:"Mayfair", description: "A system of exercises using special apparatus, designed to improve physical strength, flexibility, and posture, and enhance mental awareness.")
lesson5 = Lesson.create!(user_id: "5", category: "Boxing", price: "20", start_date_time: d.strftime, duration: "30min", neighborhood:"Chelsea", description: "The sport or practice of fighting with the fists, especially with padded gloves in a roped square ring according to prescribed rules.")


# urls = [
#   'http://img.clubic.com/08254724-photo-xbox-console.jpg',
#   'http://compass.xbox.com/assets/a5/d3/a5d3e0e4-38fd-42ab-90f4-e7b5112af4d1.png'
# ]



# Lesson.destroy_all

# lesson_attributes = [
#   {
#     category:
#     price:
#     duration:
#     description:
#     neighborhood:


#     name: "Epicure au Bristol",
#     address: "112 rue du Faubourg Saint-Honoré, 75008, Paris",
#     phone_number: "123-456-7899",
#     category: "chinese"
#   },
#   {
#     name: "La Truffière",
#     address: "4 rue Blainville, 75005, Paris",
#     phone_number: "234-567-2346",
#     category: "french"
#   },
#   {
#     name: "Le Pré Catelan",
#     address: "route de Suresnes, 75016, Paris",
#     phone_number: "234-567-2123",
#     category: "italian"
#   }
# ]

# lesson_attributes.each { |less| Lesson.create!(less) }




