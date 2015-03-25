class PostsController < ApplicationController

  def index
    @user = current_user
    @posts = Post.all
  end

  def new
    @user = current_user
    @post = @user.posts.new
  end

  def create
    @user = current_user
    @post = @user.posts.new(post_params)
    if @post.save
      flash[:notice] = "Post created"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @post = @user.posts.find(params[:id])
  end

  def show
    @user = current_user
    @post = @user.posts.find(params[:id])
  end

  def update
    @user = current_user
    @post = @user.posts.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = 'Post successfully updated'
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path, notice: 'Post was deleted'
  end

  private

  def post_params
    params.require(:post).permit(:description, :user_id)
  end

end
