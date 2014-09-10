# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jon = User.create(first_name: "Jon")
eiko = User.create(first_name: "Eiko")
hunter = User.create(first_name: "Hunter")

helium_question = hunter.test_items.create(question: "what is helium")
snake_question = hunter.test_items.create(question: "what is a snake")
hitler_question = hunter.test_items.create(question: "who was Hitler")

science = Subject.create(name: "science")
history = Subject.create(name: "history")

science.test_items << helium_question
science.test_items << snake_question
history.test_items << hitler_question

response_to_heliun_question1 = jon.responses.create(user_answer: "H")
response_to_heliun_question2 = eiko.responses.create(user_answer: "He")
response_to_snake_question = jon.responses.create(user_answer: "animal")
response_to_hitler_question = eiko.responses.create(user_answer: "person")

helium_question.responses << response_to_heliun_question1
helium_question.responses << response_to_heliun_question2
snake_question.responses << response_to_snake_question
hitler_question.responses << response_to_hitler_question
