# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ford = Company.create title: 'Ford', active: true
apple = Company.create title: 'Apple', active: true
gm = Company.create title: 'GM', active: false

Product.create [
  { title: 'Focus 1', active: false, company: ford },
  { title: 'Focus 3', active: true, company: ford },
  { title: 'iPhone 1', active: false, company: apple },
  { title: 'iPhone 5', active: true, company: apple },
  { title: 'iPhone 6', active: true, company: apple },
  { title: 'Apache', active: false, company: gm },
  { title: 'Spark', active: true, company: gm }
]
