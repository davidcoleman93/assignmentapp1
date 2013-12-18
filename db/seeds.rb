# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#This file is in \assignmentapp1\db\seeds.rb

Customer.create(name: 'David Coleman', address: '68 ballyroan road', phone: '0851684167',	email: 'd@gmail.com', sex: 'Male', dob: 1993-02-12)

Customer.create(name: 'Kerrie Copper', address: '123 Fake Street', phone: '0838317894',	email: 'kerriecopper17@hotmail.com', sex: 'Female', dob: 1993-11-20)

Customer.create(name: 'Darragh Jones', address: '126 Orla Rise', phone: '0871223456	',	email: 'djones@gmail.com', sex: 'Male', dob: 1993-03-09)

Customer.create(name: 'Sarah White', address: '92 heartwood drive', phone: '0091388319',	email: 'sarah@dit.ie', sex: 'Female', dob: 1993-04-06)

Product.create(name: 'Nurofen 200mg Tablets', description: 'For Back pain, Muscular and rheumatic pain, Headaches, Feverishness, Period pain', brand: 'nurofen.jpg', price: 24.99, size: 8, prescriptionreq: false)

Order.create(customer_id: 1, product_id: 1, date: 2013-10-11, deliverycharge: 2.00, total: 25.99)
