include RandomData


# Create Users
5.times do
  user = User.create!(
# #3
  name:     RandomData.random_name,
  email:    RandomData.random_email,
  password: RandomData.random_sentence
  )
end
users = User.all

#Create Topics
15.times do
  Topic.create!(
  name:  RandomData.random_sentence,
  description: RandomData.random_paragraph
  )
end
topics = Topic.all

 #create posts
 50.times do
   #1
   Post.create!(
   #2
   user:   users.sample,
   topic: topics.sample,
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

 user = User.first
 user.update_attributes!(
 email: 'ryanblake@mail.com',
 password: 'helloworld'
 )

 puts "Send finished"
 puts "#{User.count} users created"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
