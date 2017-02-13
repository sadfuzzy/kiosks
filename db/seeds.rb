# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ford = Company.create title: 'Ford', active: true
# apple = Company.create title: 'Apple', active: true
# gm = Company.create title: 'GM', active: false

# Product.create [
#   { title: 'Focus 1', active: false, company: ford },
#   { title: 'Focus 3', active: true, company: ford },
#   { title: 'iPhone 1', active: false, company: apple },
#   { title: 'iPhone 5', active: true, company: apple },
#   { title: 'iPhone 6', active: true, company: apple },
#   { title: 'Apache', active: false, company: gm },
#   { title: 'Spark', active: true, company: gm }
# ]

terminal_systems = Company.create title: "Терминальные системы", active: true
kiosk_service = Company.create title: "Киоск-сервис", active: true

puts "Создано компаний: #{Company.count}"

Product.create [
  { title: 'Купюроприемник',
    active: true,
    description: "Купюроприемник Creator C100 является сертифицированным устройством ЦБ России устройством для приема наличных денег в устройствах самообслуживания.",
    company: terminal_systems },
  { title: 'Модем',
    active: true,
    description: "Трехдиапазонный (900/1800/2100 МГц) GSM-модем iRZ TU31 предназначен для передачи данных по сетям сотовой связи 2G и 3G.",
    company: terminal_systems },
  { title: 'Клавиатура',
    active: true,
    description: "Применение Pinpad SZZT ZT596F: Банкоматы, терминалы самообслуживания, информационные киоски, платежные терминалы",
    company: kiosk_service },
  { title: 'Термопринтер',
    active: true,
    description: "Компактный киоск принтер Nippon NP-F209 от японского производителя Nippon Primex. Киоск принтер находится в бюджетном сегменте, поэтому одним из преимуществ модели NP-F209 является низкая цена.",
    company: kiosk_service }]

puts "Создано продуктов: #{Product.count}"
