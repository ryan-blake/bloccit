class SponsoredPostsControllerController < ApplicationController
  def show
    @sponsoredpost = SponsoredPost.find(params[:id])
  end

  def new
    @sponsoredpost = SponsoredPost.new
  end

  def edit
    @post = Post.find(params[:id])
  end
end
