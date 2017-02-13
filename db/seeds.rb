# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create [
  { title: 'Ford', active: true },
  { title: 'Apple', active: true },
  { title: 'GM', active: false }
]

Product.create [
  { title: 'Focus 1', active: false, company_id: 1 },
  { title: 'Focus 3', active: true, company_id: 1 },
  { title: 'iPhone 1', active: false, company_id: 2 },
  { title: 'iPhone 5', active: true, company_id: 2 },
  { title: 'iPhone 6', active: true, company_id: 2 },
  { title: 'Apache', active: false, company_id: 3 },
  { title: 'Spark', active: true, company_id: 3 }
]
