class SessionsController < ApplicationController
  def new
  end

  def create
    # emailに該当するユーザをみつける
    user = User.find_by(email: params[:session][:email].downcase)
    # ユーザーがデータベースにあり、かつ、認証に成功した
    if user && user.authenticate(params[:session][:password])
      log_in user
      # user_url(user)
      redirect_to user
    else
      flash[:danger] = 'emailもしくはpasswordが正しくありません'
      render 'new'
 end

end
