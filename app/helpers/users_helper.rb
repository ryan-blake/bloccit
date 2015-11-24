module UsersHelper
  def no_user_comments
    if @user.comments?
      [:error] "#{user.name} has not submitted any posts yet."
    else
      User.name.comments.each do |c|
        c

      end
    end
  end


  def no_user_posts
    if @user.posts
      put
      User.name.posts.each do |p|
        p
      else
        [:error] "{user.name} has not submitted any posts yet."

      end
    end
  end
end
