# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "admin@gmail.com", password: "123123", password_confirmation: "123123")
User.create(email:  "emp@gmail.com", password: "123123", password_confirmation: "123123")
User.create(email: "user@gmail.com", password: "123123", password_confirmation: "123123")

Visitor.create(FullName:"Wejdan Alrasheedi" , Phone_no:"13175083348", BirthDay:Date.parse('21/10/1995'), user_id:1)
Visitor.create(FullName:"Jaan Saud" , Phone_no:"13175083349", BirthDay:Date.parse('21/10/1996'),user_id:2)
Visitor.create(FullName:"Judy" , Phone_no:"13175083347", BirthDay:Date.parse('21/10/1994'),user_id:3)
Visitor.create(FullName:"Asule Albrak" , Phone_no:"13175083346", BirthDay:Date.parse('21/10/1997'),user_id:1)
Visitor.create(FullName:"Kiala Saud" , Phone_no:"13175083345", BirthDay:Date.parse('21/10/2011'),user_id:2)
Visitor.create(FullName:"Almase Saud" , Phone_no:"13175083347", BirthDay:Date.parse('21/10/2015'),user_id:3)


Post.create(visitor_id: 1, TalentName: "Sewing", TalentDescription: "sssss")
Post.create(visitor_id: 2, TalentName: "Singing", TalentDescription: "sssss")
Post.create(visitor_id: 3, TalentName: "Music", TalentDescription: "mmmm")
Post.create(visitor_id: 1, TalentName: "Art", TalentDescription: "aaaa")
Post.create(visitor_id: 2, TalentName: "Photography", TalentDescription: "ppppp")
Post.create(visitor_id: 3, TalentName: "Video Creation", TalentDescription: "vvvvvv")
