# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'a6ashin@gmail.com', password: 'nick2004', name: 'Николай', lastname: "Абашин", patronymic: 'Александрович', passport_series: '6012', passport_number: '188258', address: "г. Москва, ул Иванова, д 6, стр 2, кв 45", passport_institution: 'увд Москвы мещанского района', passport_date: '18.04.18', right_id: '1')
User.create(email: 'ivan991@gmail.com', password: 'ivan1996', name: 'Иван', lastname: "Семёнов", patronymic: 'Кириллович', passport_series: '3204', passport_number: '174561', address: "г. Москва, ул Новослободская, д 16, стр 1, кв 14", passport_institution: 'увд Москвы цао', passport_date: '01.01.1986', right_id:1)
#существует 2 вида пользователей - админ и обычный, админ может просматривать все созданые расписки и пользователей, обычный юзверь может просматривать только созданные им расписки, также я реализовал автозаполнение при создании новой расписки