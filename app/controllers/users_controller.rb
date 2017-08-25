class UsersController < ApplicationController
  def new
    @user = User.new

  end

  def show
    @user = User.find(params[:id])
    @profile = Profile.find(@user.id)
  end

  def edit
    @user = User.find(params[:id])
    @profile = Profile.new(user_id:@user.id)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "アカウント登録に成功しました!"
      @profile = Profile.create(user_id:@user.id)
      # @current_user = User.new(user_params)
      redirect_to '/welcome'
    else
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
