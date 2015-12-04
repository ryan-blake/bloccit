class Api::V1::CommentsController < Api::V1::BaseController
# #22
  before_filter :authenticate_user, except: [:index, :show]
  before_filter :authorize_user, except: [:index, :show]

  def index
    comments = Post.Comment.all
    render json: topics.to_json, status: 200
  end

  def show
    comment = Topic.Post.Comment.find(params[:id])
     render json: topic.to_json, status: 200

  end
end
