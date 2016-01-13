# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Currency.create(code: 'USD', symbol: '$', description: 'dólares', origin_country: 'Estados Unidos')
Currency.create(code: 'COP', symbol: '$', description: 'pesos colombianos', origin_country: 'Colombia')
Currency.create(code: 'MXN', symbol: '$', description: 'pesos mexicanos', origin_country: 'México')
Currency.create(code: 'EUR', symbol: '€', description: 'euros', origin_country:'')
Currency.create(code: 'PEN', symbol: 'S/', description: 'soles', origin_country: 'Perú')
Currency.create(code: 'CLP', symbol: '$', description: 'pesos chilenos', origin_country: 'Chile')

Plan.create(description: 'Manual Subscription')
Plan.create(description: 'Monthly Subscription')
Plan.create(description: 'Annual Subscription')
Plan.create(description: 'Annual Payment')

exp_date1 = Time.new(2016, 1, 20, 23, 59, 59)

Proposal.create(user_id: 1, plan: 1, currency: 1, unit_price: 250, proposal_code: SecureRandom.hex(5), num_subscriptions: 3, num_months: 6, total_price: 750, client_name: "Diego Miramontes", client_email: "dmiramon@platzi.com", company_name:'', company_details:'', expiration_date:'', notes:"Prueba 1", is_paid: false, payment_id: '')
Proposal.create(user_id: 2, plan: 1, currency: 2, unit_price: 800000, proposal_code: SecureRandom.hex(5), num_subscriptions: 2, num_months: 12, total_price: 1600000, client_name: "Sergio Zafra", client_email: "sergio@platzi.com", company_name:'Platzi', company_details:'Platzi Inc en Bogotá cool', expiration_date:'', notes:"Prueba 2", is_paid: false, payment_id: '')
Proposal.create(user_id: 3, plan: 1, currency: 3, unit_price: 990, proposal_code: SecureRandom.hex(5), num_subscriptions: 6, num_months: 3, total_price: 5940, client_name: "Leonidas Esteban", client_email: "leo@platzi.com", company_name:'Facebook', company_details:'Facebook es muy poderosa', expiration_date: exp_date1, notes:"Prueba 3", is_paid: false, payment_id: '')
Proposal.create(user_id: 4, plan: 1, currency: 5, unit_price: 850, proposal_code: SecureRandom.hex(5), num_subscriptions: 2, num_months: 12, total_price: 1700, client_name: "Sergio Colo", client_email: "colo@platzi.com", company_name:'', company_details:'', expiration_date:'', notes:"Prueba 4", is_paid: false, payment_id: '')