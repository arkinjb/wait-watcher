require 'active_record'
require_relative 'connection'

# models
require_relative '../models/user'
require_relative '../models/destination'
require_relative '../models/waittime'

User.destroy_all
Destination.destroy_all
Waittime.destroy_all

bob = User.create(email: "bob@yahoo.com", password: "bob", name: "Bob Smith")

smith = Destination.create(name: "Smithsonian", category: "museum", address: "123 Main St", city: "Washington", state: "DC", phone_number: "555-555-5554", price: 10, distance: "10 minute walk", ratings: 4)
portrait = Destination.create(name: "Portrait Gallery", category: "museum", address: "456 Broad St", city: "Washington", state: "DC", phone_number: "555-555-5554", price: 30, distance: "10 minute drive", ratings: 5)
bens = Destination.create(name: "Ben's Chili Bowl", category: "local", address: "888 Park Ave", city: "Washington", state: "DC", phone_number: "555-555-5554", price: 20, distance: "15 minute walk", ratings: 5)
lincoln = Destination.create(name: "Lincoln Memorial", category: "historical", address: "222 Jefferson Ln", city: "Washington", state: "DC", phone_number: "555-555-5554", price: 25, distance: "12 minute metro", ratings: 3)

smith.waittimes.create(day_of_week: "Tuesday", time_of_day: "morning", wait: 1)
smith.waittimes.create(day_of_week: "Saturday", time_of_day: "evening", wait: 2)
portrait.waittimes.create(day_of_week: "Tuesday", time_of_day: "evening", wait: 0)
portrait.waittimes.create(day_of_week: "Saturday", time_of_day: "morning", wait: 1)
bens.waittimes.create(day_of_week: "Tuesday", time_of_day: "morning", wait: 0)
bens.waittimes.create(day_of_week: "Saturday", time_of_day: "evening", wait: 2)
lincoln.waittimes.create(day_of_week: "Tuesday", time_of_day: "evening", wait: 1)
lincoln.waittimes.create(day_of_week: "Saturday", time_of_day: "morning", wait: 1)
