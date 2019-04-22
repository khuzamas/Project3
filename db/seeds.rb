# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all

Item.create(name: "1", exp_date: "15-3-1990", stock: 3, category: "food", image: "https://image.flaticon.com/icons/png/512/45/45332.png")
Item.create(name: "2", exp_date: "15-3-1990", stock: 3, category: "food", image: "https://image.flaticon.com/icons/png/512/45/45332.png")
Item.create(name: "3", exp_date: "15-3-1990", stock: 3, category: "food", image: "https://image.flaticon.com/icons/png/512/45/45332.png")
Item.create(name: "4", exp_date: "15-3-1990", stock: 3, category: "food", image: "https://image.flaticon.com/icons/png/512/45/45332.png")

List.create(tiltle: 'lemon', description: '4 killos')

Option.create(name: "1", category: "food", image: "https://image.flaticon.com/icons/png/512/45/45332.png")
Option.create(name: "2", category: "food", image: "https://image.flaticon.com/icons/png/512/45/45332.png")
Option.create(name: "3", category: "food", image: "https://image.flaticon.com/icons/png/512/45/45332.png")
Option.create(name: "4", category: "food", image: "https://image.flaticon.com/icons/png/512/45/45332.png")

Fridge.destroy_all