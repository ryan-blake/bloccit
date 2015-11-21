class FavoritesController < ApplicationController

  before_action :require_sign_in

  def create
    post = Post.find(params[:post_id])
    favorite = current_user.favorite.build(post: post)


    if favorite.save
      flash[:notice] = "Post Favorited"
    else
      flash[:error] = "favoriting failed."
    end


    redirect_to [post.topic.post]
  end
end
