class Api::V1::PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json

  def index
    @posts = Post.all.reverse
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    if @post
      render json: @post
    else
      render json: @post.errors
    end
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /post
  # POST /post.json
  def create
    @post = Post.new(post_params)


    if @post.save
      render json: @post
    else
      render json: @post.errors
    end
  end

  # PATCH/PUT /post/1
  # PATCH/PUT /post/1.json
  def update
  end

  # DELETE /post/1
  # DELETE /post/1.json
  def destroy
    @post.destroy

    render json: { notice: 'Post was successfully removed.' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:message, :likes_count, pictures: [])
    end
end


end
