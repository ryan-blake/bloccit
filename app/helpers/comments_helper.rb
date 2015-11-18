module CommentsHelper
  def user_is_authorized_for_comment?(comment)
    current_user && (current_user == commment.user || current_user.admin?)
  end
end
