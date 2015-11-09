class PostsController < ApplicationController
  def index
    @posts = Post.all

    @posts.first.title = "spam"
    @posts.first.save!

    # post.first.update_attributes(title: "spam")
  end

  def show
  end

  def new
  end

  def edit
  end
end
