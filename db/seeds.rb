# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
aiden = User.create(email: 'aiden@example.com',
    password: 'password',
    password_confirmation: 'password',
    role: 'admin')
    User.create(email: 'adele@example.com',
        password: 'password',
        password_confirmation: 'password')
User.create(email: 'sarah@example.com',
password: 'password',
password_confirmation: 'password')
User.create(email: 'gaga@example.com',
password: 'password',
password_confirmation: 'password')
aiden.joined_rooms << Room.create(name: 'Adele', is_private: false)
aiden.joined_rooms << Room.create(name: 'Music', is_private: false)