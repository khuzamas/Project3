# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all

# Item.create(name: "1", exp_date: "15-3-1990", stock: 3, category: "food", image: "https://image.flaticon.com/icons/png/512/45/45332.png")
# Item.create(name: "2", exp_date: "15-3-1990", stock: 3, category: "food", image: "https://image.flaticon.com/icons/png/512/45/45332.png")
# Item.create(name: "3", exp_date: "15-3-1990", stock: 3, category: "food", image: "https://image.flaticon.com/icons/png/512/45/45332.png")
# Item.create(name: "4", exp_date: "15-3-1990", stock: 3, category: "food", image: "https://image.flaticon.com/icons/png/512/45/45332.png")

List.create(tiltle: 'lemon', description: '4 killos')

# User.destroy_all

# User.create(email: "ri1n1g")
# User.create(email: "ri1nfffff")
# User.create(email: "eeeeeee")

Option.destroy_all

Option.create(name: "Watermelon", category: "fruit", image: "2.png")
Option.create(name: "Strawberry", category: "fruit", image: "https://image.flaticon.com/icons/png/512/45/45332.png")
Option.create(name: "Mushroom", category: "food", image: "https://image.flaticon.com/icons/png/512/45/45332.png")
Option.create(name: "Carrot", category: "vegetables", image: "https://image.flaticon.com/icons/png/512/45/45332.png")
Option.create(name: "Olives", category: "vegetable", image: "2.png")
Option.create(name: "Jam", category: "food", image: "2.png")
Option.create(name: "Tomatoes", category: "fruit", image: "2.png")
Option.create(name: "Cake", category: "dessert", image: "2.png")
Option.create(name: "Cheese", category: "dairy", image: "2.png")
Option.create(name: "Doughnut", category: "dessert", image: "2.png")
Option.create(name: "Milk", category: "dairy", image: "2.png")
Option.create(name: "Chocolate", category: "dessert", image: "2.png")
Option.create(name: "Pineapple", category: "fruit", image: "2.png")
Option.create(name: "Cherry", category: "fruit", image: "2.png")
Option.create(name: "Fish", category: "meat", image: "2.png")
Option.create(name: "Pomegranate", category: "fruit", image: "2.png")
Option.create(name: "Lemon", category: "fruit", image: "2.png")
Option.create(name: "Eggs", category: "food", image: "2.png")
Option.create(name: "Coconut", category: "food", image: "2.png")
Option.create(name: "Pear", category: "fruit", image: "2.png")
Option.create(name: "Apple", category: "fruit", image: "2.png")
Option.create(name: "Kiwi", category: "fruit", image: "2.png")
Option.create(name: "Chicken", category: "meat", image: "2.png")
Option.create(name: "Meat", category: "meat", image: "2.png")
Option.create(name: "Sushi", category: "food", image: "2.png")

# Fridge.destroy_all