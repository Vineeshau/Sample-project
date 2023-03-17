# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
    Product.create({ name: 'Phone', quantity: 5, price: 5000 })
    Product.create({ name: 'TV', quantity: 3, price: 10000 })
    Product.create({ name: 'Laptop', quantity: 8, price: 500000 })
    Product.create({ name: 'Speaker', quantity: 2, price: 500 }) 

    Customer.create({ name: 'Sally', email: 'sally@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })
    Customer.create({ name: 'Sue', email: 'sue@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })
    Customer.create({ name: 'Kev', email: 'kev@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })
    Customer.create({ name: 'Jack', email: 'jack@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa' })