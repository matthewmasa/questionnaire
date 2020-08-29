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
      redirect_to
    end
  end

end
