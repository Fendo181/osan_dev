class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
   @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
     flash[:success] = "Welcome to the Sample App!"
     redirect_to @user
    else
     # アカウント作成失敗時
     render 'new'
    end
  end

  #一旦はViewファイルの為
  def profile
    @user = User.new
  end

  private

   def user_params
     params.require(:user).permit(:name, :email, :password,
                                  :password_confirmation)
   end
end
