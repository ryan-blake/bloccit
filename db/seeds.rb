include RandomData

##Create Topics
15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all

 #create posts
 50.times do

   Post.create!(
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

 puts "Send finished"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
