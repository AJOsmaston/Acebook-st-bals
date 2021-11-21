class Api::V1::LikesController < ApplicationController
  before_action :get_post
  before_action :find_like, only: [:destroy]

  # GET /api/v1/posts/:post_id/likes(.:format)
  def index
    @likes = @post.likes

    render json: @likes
  end


  private

  def get_post
    @post = Post.find(params[:post_id])
  end

  def find_like
    @like = @post.likes.find(params[:id])
  end

end
