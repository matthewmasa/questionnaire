# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts =Post.all
  end

  def new
    @post=Post.new
  end

  def create
    @post=Post.new(post_params)
    if @post.save
      redirect_to post_path, notice: "#投稿#{@post}を投稿しました。"
    else
      render :new
    end
  end

  def show
    @post=Post.find_by(params[:id])
  end

  def edit
    @post=Post.find_by(params[:id])
  end

  def update
    @post=Post.find_by(params[:id])
    if @post.update
      redirect_to post_path "投稿#{@post}は編集されました。"
    else
      render :index
    end
  end

  def destroy
    @post=Post.find_by(params[:id])
    if @post.destroy
      redirect_to post_path "投稿#{@post}は削除されました。"
    else
      render :index
    end
  end

   private
    def post_params
      params.reqire(:post).permit(:user_name,:title,:content)
    end
end
