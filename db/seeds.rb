# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

############# SEED USERS ############
max_users = 15
users_needed = max_users - User.count

users_needed.times do
  person = {}
  person[:username] = Faker::Internet.user_name(5..8)
  person[:email] = Faker::Internet.safe_email
  person[:password] = Faker::Internet.password(5, 10)

  User.create(person)
end


############# SEED QUESTIONS ############
max_questions = 50
questions_needed = max_questions - Question.count

questions_needed.times do
  question_data = {}
  question_data[:user_id] = rand(1..15)
  question_data[:title] = Faker::StarWars.planet
  question_data[:body] = Faker::Lorem.paragraph

  Question.create(question_data)
end


############# SEED ANSWERS ############
max_answers = 15
answers_needed = max_answers - Answer.count

answers_needed.times do
  answer_data = {}
  answer_data[:user_id] = rand(1..15)
  answer_data[:question_id] = rand(1..15)
  answer_data[:body] = Faker::ChuckNorris.fact

  Answer.create(answer_data)
end


############# SEED COMMENTS ############
max_comments = 100
comments_needed = max_comments - Comment.count

comments_needed.times do
  comment_data = {}
  comment_data[:user_id] = rand(1..15)
  comment_data[:body] = Faker::Lorem.paragraph
  comment_data[:commentable_id] = rand(1..15)
  comment_data[:commentable_type] = ["Question", "Answer"].sample

  Comment.create(comment_data)
end


############# SEED VOTES ############
max_votes = 100
votes_needed = max_votes - Vote.count

votes_needed.times do
  vote_data = {}
  vote_data[:user_id] = rand(1..15)
  vote_data[:votable_id] = rand(1..15)
  vote_data[:votable_type] = ["Question", "Answer", "Comment"].sample
  vote_data[:vote_direction] = ["up", "down", "neutral"].sample

  Vote.create(vote_data)
end
