include RandomData


#create questions
20.times do
  #1
  Question.create!(
  #2
  title: RandomData.random_sentence,

  body: RandomData.random_paragraph.tr('.', '?')
  )
end
questions = Question.all


#create posts
50.times do
  #1
  Post.create!(
  #2
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph
  )
end
posts = Post.all

# Create comments
#3
100.times do
  Comment.create!(
  #4
  post: posts.sample,
  body: RandomData.random_paragraph
  )
end

puts "Send finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"
