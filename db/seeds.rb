# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'date'

schedule = Schedule.new(timing: "daily", frequency: 2)
schedule.save

remedy = Remedy.new(user_id: 1, name: "Catalyst", kind: "multivitamin", start_date: Date.today, end_date: "none", dosage: "Two capsules", special_instructions: "Take with food", schedule_id: 1)
remedy.save