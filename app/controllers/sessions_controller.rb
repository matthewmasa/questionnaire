class SessionsController < ApplicationController
  skip before_action :login_required

  def new
  end

  def create
    @user=User.find_by(email: session_params[:email].downsize)
    if user&authenticate(session_params[:password][:session])
      redirect_to root_path, notice: 'ログインしました。'
    else
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'ログアウトしました。'
  end

  private
   def session_params
     params.require(:session).permit(:email, :password)
   end
end
