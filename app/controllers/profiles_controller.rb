class ProfilesController < ApplicationController
  def show
  end

  def edit
    @user = User.find(params[:id])
    @profile = Profile.new(user_id: params[:id])
  end

  def create
    @profile = User.new(user_params)
    if @user.save
      flash[:success] = "アカウント登録に成功しました!"
      #redirect_to @user
      redirect_to '/welcome'
    else
      render 'new'
    end
  end

  def update
  end

  def delete
  end
end
