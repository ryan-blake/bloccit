include RandomData
 #assign..

 Post.find_or_create_by(title: "Unique Title!",
 body: "this is the most amazingly unique post body ever!")

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
