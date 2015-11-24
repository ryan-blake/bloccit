module PostsHelper
  def user_is_authorized_for_post?(post)
       current_user && (current_user == post.user || current_user.admin?)
  end

  def user_has_no_post(user)
    puts "#{user.name} has no posts yet"
  end
end
