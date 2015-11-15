include RandomData
#create sponsored posts
 5.times do
   SponsoredPost.create!(
   title: RandomData.random_sentence,
   body: RandomData.random_paragraph,
   price: RandomData.random_integer
      )
end
sponsoredposts = SponsoredPost.all

#CREATE TOPICS
15.times do
  Topic.create!(
    name: RandomData.random_sentence,
    description: RandomData.random_paragraph
  )
end
topics = Topic.all

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

 puts "Seed finished mofo"
 puts "#{SponsoredPost.count} sponsored posts created"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
