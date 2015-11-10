class PostsController < ApplicationController
  def index
    @posts = Post.all

      @posts.each_with_index do |post, index|
        if index % 5 == 0
          post.title = "Spam"
        end
      end

      #@posts.first.title = "spam"
      #@posts.first.save!

      # post.first.update_attributes(title: "spam")
    end

    def show
    end

    def new
    end

    def edit
    end
  end
