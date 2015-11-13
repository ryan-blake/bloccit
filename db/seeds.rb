include RandomData

#create questions
50.times do
  #1
  Question.create!(
  #2
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph
  resolved: true
  )
end
questions = Question.all

 #create questions
 50.times do
   #1
   Question.create!(
   #2
   title: RandomData.random_sentence,
   body: RandomData.random_paragraph
   )
 end
 questions = Question.all

 # Create comments
 #3
 100.times do
   Comment.create!(
    #4
    question: questions.sample,
    body: RandomData.random_paragraph
   )
 end

 puts "Send finished"
 puts "#{Question.count} questions created"
 puts "#{Comment.count} comments created"
