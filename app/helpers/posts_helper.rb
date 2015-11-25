module PostsHelper
  def user_is_authorized_for_post?(post)
       current_user && (current_user == post.user || current_user.admin?)
  end

  def user_has_no_post(user)
    unless User.comments.present? || User.posts.present?
      flash[:error]="User has no favorited posts or comments"
    end
end
