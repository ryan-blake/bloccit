class Api::V1::PostsController < Api::V1::BaseController
  before_filter :authenticate_user
  before_filter :authorize_user

  def update
  end

  def create
  end


end
