# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Collection.destroy_all
Project.destroy_all

User.reset_pk_sequence
Collection.reset_pk_sequence
Project.reset_pk_sequence

# users = [
#     {name: "Kody"},
#     {name: "Woodelin"}
# ]

# users.each {|user| User.create(user)}

user1 = User.create(name: "Kody")
user2 = User.create(name: "Woodelin")


project1 = Project.create(title: "Project One", html: "Html", javascript: "Javascript", css:"CSS")
project2 = Project.create(title: "Project Two", html: "Html", javascript: "Javascript", css:"CSS")


collection1 = Collection.create(name: "Collection One", user_id: user1.id, project_id: project1.id)
collection2 = Collection.create(name: "Collection Two", user_id: user2.id, project_id: project2.id)
# collection3 = Collection.create(name: "Collection Three", user_id: user2.id, project_id: project2.id)
    

# project joiner 


