# frozen_string_literal: true

class Admin::UsersController < ApplicationController
  def new
    @user= User.new
  end

  def create
    @user= User.new(user_params)
    if user.save
      redirect_to admin_users_path@user, notice:"ユーザー#{@user.name}を登録しました。"
    else
      render :new
    end
  end

  def edit
    @user=User.find_by(params[:id])
  end

  def update
    @user=User.find_by(params[:id])
    if @user.update
      redirect_to admin_users_path@user, notice:"ユーザー#{@user.name}を編集しました。"
    else
      render :new
    end
  end

  def show
    @user= User.find_by(params[:id])
  end

  def index
    @users= User.all
  end

  def destroy
    @user=User.find_by(params[:id])
    if @user.destroy
      redirect_to admin_user_url, notice:"ユーザー#{@user.name}を削除しました"
    else
      render :new
    end
  end

 private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end
