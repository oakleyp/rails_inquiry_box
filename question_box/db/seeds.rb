# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Question.delete_all

# Question.create(
#   id: 1,
#   title: "My Very First Post",
#   rating: 4,
#   user_id: 1,
#   tag_id: 1,
#   content:
#   %Q{### There Is Something You Should Know!

#   This is my very first post using markdown!

#   How do you like it?  I learned this from [RichOnRails.com](http://richonrails.com/articles/rendering-markdown-with-redcarpet)!}
# )

# Question.create(
#   id: 2,
#   title: "My Second Post",
#   rating: 9,
#   user_id: 1,
#   tag_id: 1,
#   content:
#   %Q{### My List of Things To Do!

#   Here is the list of things I wish to do!

#   * write more posts
#   * write even more posts
#   * write even more posts!}
# )
# =======
# User data

User.create!(displayname: "erickanarr", email: "erickanarr@aol.com", password_digest: "erickanarr")
User.create!(displayname: "garydubbya", email: "garydubbya@aol.com", password_digest: "garydubbya")
User.create!(displayname: "seanshellie", email: "seanshellie@aol.com", password_digest: "seanshellie")
User.create!(displayname: "oakleypeavler", email: "oakleypeavler@aol.com", password_digest: "oakleypeavler")
User.create!(displayname: "steveroma", email: "steveroma@aol.com", password_digest: "steveroma")
User.create!(displayname: "geoffohumphreys", email: "geoffohumphreys@aol.com", password_digest: "geoffohumphreys")
User.create!(displayname: "orestiarsi", email: "orestiarsi@aol.com", password_digest: "orestiarsi")

# Tag data
Tag.create!(name: "rubyonrails")
Tag.create!(name: "javascript")
Tag.create!(name: "html")
Tag.create!(name: "rubyonrails")
Tag.create!(name: "javascript")
Tag.create!(name: "html")
Tag.create!(name: "css")

# Question data
Question.create!(user_id: 1, title: "rails question", content: "this is the content needed", rating: 5, tag_id: 1)
Question.create!(user_id: 2, title: "javascript question", content: "this is the content needed", rating: 3, tag_id: 2)
Question.create!(user_id: 4, title: "rails question", content: "this is the content needed", rating: 1, tag_id: 1)
Question.create!(user_id: 5, title: "javascript question", content: "this is the content needed", rating: 1, tag_id: 2)
Question.create!(user_id: 2, title: "javascript question", content: "this is the content needed", rating: 4, tag_id: 2)
Question.create!(user_id: 3, title: "html question", content: "this is the content needed", rating: 5, tag_id: 6)
Question.create!(user_id: 7, title: "css question", content: "this is the content needed", rating: 2, tag_id: 7)

#Answer data
Answer.create!(content: "this is the answer you've been looking for", question_id: 1, rating: 3, correct: "true", tag_id: 1, user_id: 1)
Answer.create!(content: "this is the answer you've been looking for2", question_id: 3, rating: 1, correct: "false", tag_id: 2, user_id: 4)
Answer.create!(content: "this is the answer you've been looking for3", question_id: 6, rating: 2, correct: "true", tag_id: 1, user_id: 5)
Answer.create!(content: "this is the answer you've been looking for4", question_id: 7, rating: 5, correct: "false", tag_id: 5, user_id: 1)
Answer.create!(content: "this is the answer you've been looking for5", question_id: 2, rating: 4, correct: "true", tag_id: 3, user_id: 2)
Answer.create!(content: "this is the answer you've been looking for6", question_id: 1, rating: 3, correct: "false", tag_id: 4, user_id: 4)
Answer.create!(content: "this is the answer you've been looking for7", question_id: 5, rating: 1, correct: "true", tag_id: 3, user_id: 3)

